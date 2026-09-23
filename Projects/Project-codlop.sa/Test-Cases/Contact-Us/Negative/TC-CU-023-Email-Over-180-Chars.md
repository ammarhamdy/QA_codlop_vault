---
tc_id: TC-CU-023
title: Reject Email Longer Than 180 Characters
priority: Medium
status: Ready
type: API
linked_requirement: REQ-CODLOP-SA-001
tags:
  - test-case
  - contact-us
  - negative
  - boundary
  - email
---

# Test Data
| Field | Value |
| ----- | ----- |
| email | `Test-Data/Email-181.txt` — 181 chars, otherwise RFC-shaped |

# Preconditions
- Runner `Projects/Project-codlop.sa/Scripts/contect-us.sh` is available (multipart POST to https://test.codlop.sa/contact-submit).
- Fresh `_token` + session cookies in Script §2 — reload the site and update them if any call returns HTTP 419.
- Test is executed against the **test** environment only.

# Steps
1. Attempt to type/paste the 181-char email in UI (maxlength=180 should stop it).
2. Send the 181-char value via curl.

# Expected Result
- Client prevents >180; server answers 422 `errors.email` (max:180).

# Notes
- 180 boundary acceptance proven in TC-CU-008.

# Attachments
- Save the curl response body (or a `.har` export) next to this case.

# Script
```bash
# In Projects/Project-codlop.sa/Scripts/contect-us.sh — set Section 3 (Form Data Payload):
NAME="Omar Youssef"
PHONE="+966 50 111 2222"
EMAIL="$(cat Projects/Project-codlop.sa/Test-Cases/Contact-Us/Test-Data/Email-181.txt)"
PROJECT_TYPE="تطبيق جوال"
MESSAGE="رسالة صالحة."
bash Projects/Project-codlop.sa/Scripts/contect-us.sh
# Expect: HTTP 422 errors.email (max 180).
```

---
*Last Updated: 2026-09-23 12:22*
