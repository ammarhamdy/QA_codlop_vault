---
tc_id: TC-CU-030
title: Handle Scripts, HTML, SQL-Like and Oversized Encoded Input Safely in All Text Fields
priority: High
status: Ready
type: API
linked_requirement: REQ-CODLOP-SA-002
tags:
  - test-case
  - contact-us
  - negative
  - security
  - xss
  - injection
---

# Test Data
| Field | Value |
| ----- | ----- |
| name | `<script>alert('xss')</script>` |
| phone | `1' OR '1'='1` |
| email | `test'+UNION+SELECT+1--@example.com` |
| message | `<img src=x onerror=alert(document.cookie)>` + `'; DROP TABLE leads; --` + 4 KB URL/Base64-encoded blob |

# Preconditions
- Runner `Projects/Project-codlop.sa/Scripts/contect-us.sh` is available (multipart POST to https://test.codlop.sa/contact-submit).
- Fresh `_token` + session cookies in Script §2 — reload the site and update them if any call returns HTTP 419.
- Test is executed against the **test** environment only.

# Steps
1. Submit the payload set via curl (and paste the same in UI).
2. Inspect the HTTP outcome, stored lead (if any) and every surface that echoes it (confirmation, notification email, admin view).

# Expected Result
- Either rejected (422) or safely stored with escaping — NEVER rendered as executable markup.
- No SQL error strings or behavior changes leak in responses.
- Encoded oversize string is handled within field length rules (4 KB blob in `message` must hit max:4000).

# Notes
- If any surface later renders the message, this becomes a stored-XSS blocker — verify with the devs.
- API contract assumed (Laravel-style): success = HTTP 200 JSON, validation failure = HTTP 422 with `errors` per field, stale CSRF = HTTP 419. Confirm exact codes/copy with the developers before execution.

# Attachments
- Save the curl response body (or a `.har` export) next to this case.

# Script
```bash
# In Projects/Project-codlop.sa/Scripts/contect-us.sh — set Section 3 (Form Data Payload):
NAME="<script>alert('xss')</script>"
PHONE="1' OR '1'='1"
EMAIL="test'+UNION+SELECT+1--@example.com"
PROJECT_TYPE="تطبيق جوال"
MESSAGE="<img src=x onerror=alert(document.cookie)> '; DROP TABLE leads; -- %3Cscript%3E…(pad to >4000 chars)"
# Pad the encoded blob past 4,000 chars with repeated %3Cscript%3E to combine size + encoding attacks.
bash Projects/Project-codlop.sa/Scripts/contect-us.sh
# Expect: No execution anywhere; 422 or inert escaped storage.
```

---
*Last Updated: 2026-09-23 12:29*
