---
tc_id: TC-CU-038
title: Enter Arabic-Indic Numerals in Phone Field and Verify Locale Normalization
priority: Medium
status: Ready
type: API
linked_requirement: REQ-CODLOP-SA-001
tags:
  - test-case
  - contact-us
  - creative
  - phone
  - localization
  - normalization
---

# Test Data
| Field | Value |
| ----- | ----- |
| phone | `٠٥٠١٢٣٤٥٦٧` (Arabic-Indic for 0501234567) |

# Preconditions
- Runner `Projects/Project-codlop.sa/Scripts/contect-us.sh` is available (multipart POST to https://test.codlop.sa/contact-submit).
- Fresh `_token` + session cookies in Script §2 — reload the site and update them if any call returns HTTP 419.
- Test is executed against the **test** environment only.

# Steps
1. Type via an Arabic keyboard layout (or paste) in UI.
2. Send `PHONE="٠٥٠١٢٣٤٥٦٧"` via curl.
3. Compare the stored normalized number with the ASCII `0501234567` run.

# Expected Result
- Per the Contact Us spec, Arabic-Indic digits are normalized (`٠-٩` → `0-9`) and the submission is ACCEPTED.
- Stored number equals the ASCII-format lead's (+966501234567) — consistent handling across inputs.

# Notes
- This is an explicit product rule, not a grey area: rejection here is a bug.
- API contract assumed (Laravel-style): success = HTTP 200 JSON, validation failure = HTTP 422 with `errors` per field, stale CSRF = HTTP 419. Confirm exact codes/copy with the developers before execution.

# Attachments
- Save the curl response body (or a `.har` export) next to this case.

# Script
```bash
# In Projects/Project-codlop.sa/Scripts/contect-us.sh — set Section 3 (Form Data Payload):
NAME="ناصر العبدالله"
PHONE="٠٥٠١٢٣٤٥٦٧"
EMAIL=""
PROJECT_TYPE="تطبيق جوال"
MESSAGE="أرغب في تطبيق."
bash Projects/Project-codlop.sa/Scripts/contect-us.sh
# Expect: HTTP 200 with normalized +966501234567.
```

---
*Last Updated: 2026-09-23 12:37*
