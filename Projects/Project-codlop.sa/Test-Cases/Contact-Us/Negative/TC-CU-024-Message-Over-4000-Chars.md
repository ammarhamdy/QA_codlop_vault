---
tc_id: TC-CU-024
title: Enforce the 4,000-Character Message Limit Without Silent Truncation
priority: High
status: Ready
type: API
linked_requirement: REQ-CODLOP-SA-001
tags:
  - test-case
  - contact-us
  - negative
  - boundary
  - message
---

# Test Data
| Field | Value |
| ----- | ----- |
| message | `Test-Data/Msg-4001.txt` — exactly 4,001 chars (Msg-4000 + one `!`) |

# Preconditions
- Runner `Projects/Project-codlop.sa/Scripts/contect-us.sh` is available (multipart POST to https://test.codlop.sa/contact-submit).
- Fresh `_token` + session cookies in Script §2 — reload the site and update them if any call returns HTTP 419.
- Test is executed against the **test** environment only.

# Steps
1. Try pasting 4,001 chars into UI — textarea `maxlength=4000` must clip input or show a limit error.
2. Send the 4,001-char body via curl and inspect the response.

# Expected Result
- UI cannot send more than 4,000.
- API: HTTP 422 `errors.message` (max:4000) — NOT a 200 with the first 4,000 chars silently kept.
- User-facing copy (if error shown) explains the limit clearly.

# Notes
- The critical defect pattern here is silent truncation of a lead's requirements — verify stored content length on any 2xx.

# Attachments
- Save the curl response body (or a `.har` export) next to this case.

# Script
```bash
# In Projects/Project-codlop.sa/Scripts/contect-us.sh — set Section 3 (Form Data Payload):
NAME="Huda Saleh"
PHONE="+966 50 111 2222"
EMAIL=""
PROJECT_TYPE="نظام إداري"
MESSAGE="$(cat Projects/Project-codlop.sa/Test-Cases/Contact-Us/Test-Data/Msg-4001.txt)"
bash Projects/Project-codlop.sa/Scripts/contect-us.sh
# Expect: HTTP 422 errors.message (max 4000), not 200-with-truncation.
```

---
*Last Updated: 2026-09-23 12:23*
