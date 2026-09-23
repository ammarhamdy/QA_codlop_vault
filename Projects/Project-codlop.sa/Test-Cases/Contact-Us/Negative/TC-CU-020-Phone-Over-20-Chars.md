---
tc_id: TC-CU-020
title: Prevent Submitting a Phone Number Longer Than 20 Characters
priority: Medium
status: Ready
type: API
linked_requirement: REQ-CODLOP-SA-001
tags:
  - test-case
  - contact-us
  - negative
  - boundary
  - phone
---

# Test Data
| Field | Value |
| ----- | ----- |
| phone | `Test-Data/Phone-21.txt` — 21 chars, also an invalid 11-digit national number |

# Preconditions
- Runner `Projects/Project-codlop.sa/Scripts/contect-us.sh` is available (multipart POST to https://test.codlop.sa/contact-submit).
- Fresh `_token` + session cookies in Script §2 — reload the site and update them if any call returns HTTP 419.
- Test is executed against the **test** environment only.

# Steps
1. Try typing 21 chars in UI — `maxlength=20` blocks the 21st.
2. Send the 21-char value via curl.

# Expected Result
- UI cannot exceed 20 chars.
- API: HTTP 422 (max:20 or phone-format failure) — long value never stored.

# Notes
- Boundary acceptance (exactly 20) is TC-CU-008; this is its rejection twin.

# Attachments
- Save the curl response body (or a `.har` export) next to this case.

# Script
```bash
# In Projects/Project-codlop.sa/Scripts/contect-us.sh — set Section 3 (Form Data Payload):
NAME="Sami Nasser"
PHONE="$(cat Projects/Project-codlop.sa/Test-Cases/Contact-Us/Test-Data/Phone-21.txt)"
EMAIL=""
PROJECT_TYPE="تطبيق جوال"
MESSAGE="رسالة صالحة."
bash Projects/Project-codlop.sa/Scripts/contect-us.sh
# Expect: HTTP 422 errors.phone.
```

---
*Last Updated: 2026-09-23 12:19*
