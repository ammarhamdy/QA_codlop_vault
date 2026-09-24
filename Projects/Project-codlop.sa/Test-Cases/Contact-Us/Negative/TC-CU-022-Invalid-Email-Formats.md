---
tc_id: TC-CU-022
title: Reject Malformed Emails When the Optional Field Is Provided
priority: High
status:
type: API
linked_requirement: REQ-CODLOP-SA-001
tags:
  - test-case
  - contact-us
  - negative
  - validation
  - email
---

# Test Data
| Field | Value |
| ----- | ----- |
| Values | `user@` · `user.example.com` · `user@.com` · `user@@example.com` · ` user @example.com ` |

# Preconditions
- Runner `Projects/Project-codlop.sa/Scripts/contect-us.sh` is available (multipart POST to https://test.codlop.sa/contact-submit).
- Fresh `_token` + session cookies in Script §2 — reload the site and update them if any call returns HTTP 419.
- Test is executed against the **test** environment only.

# Steps
1. Submit each value with all other fields valid (UI + curl).

# Expected Result
- Each is rejected with `errors.email` (RFC-style validation) — email is optional but must be valid when present.
- Blank email remains accepted (contrast TC-CU-002).

# Notes
- API contract assumed (Laravel-style): success = HTTP 200 JSON, validation failure = HTTP 422 with `errors` per field, stale CSRF = HTTP 419. Confirm exact codes/copy with the developers before execution.

# Attachments
- Save the curl response body (or a `.har` export) next to this case.

# Script
```bash
for V in "user@" "user.example.com" "user@.com" "user@@example.com" " user @example.com "; do
  sed "s|^EMAIL=.*|EMAIL=\"$V\"|" Projects/Project-codlop.sa/Scripts/contect-us.sh > /tmp/tc-cu-022.sh
  bash /tmp/tc-cu-022.sh
done
# Expect: 5 × HTTP 422 errors.email.
```

---
*Last Updated: 2026-09-23 12:21*
