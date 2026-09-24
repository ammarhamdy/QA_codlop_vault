---
tc_id: TC-CU-018
title: Reject Whitespace-Only Name, Phone and Message
priority: High
status:
type: API
linked_requirement: REQ-CODLOP-SA-001
tags:
  - test-case
  - contact-us
  - negative
  - validation
  - whitespace
---

# Test Data
| Field | Value |
| ----- | ----- |
| name | `        ` (8 spaces) |
| phone | `     ` (5 spaces) |
| message | ` \t \n ` (spaces, tab, newline) |
| consent | checked |

# Preconditions
- Runner `Projects/Project-codlop.sa/Scripts/contect-us.sh` is available (multipart POST to https://test.codlop.sa/contact-submit).
- Fresh `_token` + session cookies in Script §2 — reload the site and update them if any call returns HTTP 419.
- Test is executed against the **test** environment only.

# Steps
1. Enter only whitespace into name, phone and message; fill consent; submit.
2. Repeat via curl with the whitespace payloads.

# Expected Result
- Whitespace is treated as empty: required errors on name, phone and message.
- Phone whitespace must NOT be normalized into a 'valid' number.

# Notes
- Server must `trim` before required/regex rules — a 200 here is a critical bug.

# Attachments
- Save the curl response body (or a `.har` export) next to this case.

# Script
```bash
# In Projects/Project-codlop.sa/Scripts/contect-us.sh — set Section 3 (Form Data Payload):
NAME="        "
PHONE="     "
EMAIL=""
PROJECT_TYPE="تطبيق جوال"
MESSAGE="$(printf ' \t \n ')"
bash Projects/Project-codlop.sa/Scripts/contect-us.sh
# Expect: HTTP 422 with name+phone+message errors.
```

---
*Last Updated: 2026-09-23 12:17*
