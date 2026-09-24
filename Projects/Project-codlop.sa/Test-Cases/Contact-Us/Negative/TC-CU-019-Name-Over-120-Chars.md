---
tc_id: TC-CU-019
title: Reject or Prevent Name Longer Than 120 Characters
priority: High
status:
type: API
linked_requirement: REQ-CODLOP-SA-001
tags:
  - test-case
  - contact-us
  - negative
  - boundary
  - name
---

# Test Data
| Field | Value |
| ----- | ----- |
| name | `Test-Data/Name-121.txt` — 121 chars (120-char Arabic name + one extra letter) |

# Preconditions
- Runner `Projects/Project-codlop.sa/Scripts/contect-us.sh` is available (multipart POST to https://test.codlop.sa/contact-submit).
- Fresh `_token` + session cookies in Script §2 — reload the site and update them if any call returns HTTP 419.
- Test is executed against the **test** environment only.

# Steps
1. In UI: try to paste 121 chars — `maxlength=120` must prevent input beyond 120.
2. Via curl (client limits bypassed): submit the 121-char name.

# Expected Result
- UI: input stops at 120 (or an inline max-length error appears).
- API: HTTP 422 `errors.name` (max:120) — never stored truncated silently.

# Notes
- 'Rejected OR prevented' both pass; storing a silently-truncated 120-char value is the failure mode.

# Attachments
- Save the curl response body (or a `.har` export) next to this case.

# Script
```bash
# In Projects/Project-codlop.sa/Scripts/contect-us.sh — set Section 3 (Form Data Payload):
NAME="$(cat Projects/Project-codlop.sa/Test-Cases/Contact-Us/Test-Data/Name-121.txt)"
PHONE="+966 50 123 4567"
EMAIL=""
PROJECT_TYPE="تطبيق جوال"
MESSAGE="نص صالح ضمن الحدود."
bash Projects/Project-codlop.sa/Scripts/contect-us.sh
# Expect: HTTP 422 errors.name (max 120).
```

---
*Last Updated: 2026-09-23 12:18*
