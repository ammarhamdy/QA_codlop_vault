---
tc_id: TC-CU-035
title: Reject Altered or Non-Allow-List Project Type Values
priority: High
status:
type: API
linked_requirement: REQ-CODLOP-SA-002
tags:
  - test-case
  - contact-us
  - negative
  - security
  - project-type
---

# Test Data
| Field | Value |
| ----- | ----- |
| Values | `نظام حجز عقاري` (not in list) · `mobile-app` (English) · `<b>تطبيق</b>` · empty string |

# Preconditions
- Runner `Projects/Project-codlop.sa/Scripts/contect-us.sh` is available (multipart POST to https://test.codlop.sa/contact-submit).
- Fresh `_token` + session cookies in Script §2 — reload the site and update them if any call returns HTTP 419.
- Test is executed against the **test** environment only.

# Steps
1. Change the `<select>` value via DevTools in UI and submit.
2. Send each value via curl `-F project_type=…`.

# Expected Result
- Server enforces the 7-value allow list (in_list rule): HTTP 422 `errors.project_type` for every variant.
- No lead stores a free-form type; `<b>…</b>` never renders in backend views.

# Notes
- Allowed list: تطبيق جوال / متجر إلكتروني / ثيم سلة أو زد / نظام إداري / موقع تعريفي / استضافة ودومين / غير ذلك
- API contract assumed (Laravel-style): success = HTTP 200 JSON, validation failure = HTTP 422 with `errors` per field, stale CSRF = HTTP 419. Confirm exact codes/copy with the developers before execution.

# Attachments
- Save the curl response body (or a `.har` export) next to this case.

# Script
```bash
for V in "نظام حجز عقاري" "mobile-app" "<b>تطبيق</b>" ""; do
  sed "s|^PROJECT_TYPE=.*|PROJECT_TYPE=\"$V\"|" Projects/Project-codlop.sa/Scripts/contect-us.sh > /tmp/tc-cu-035.sh
  bash /tmp/tc-cu-035.sh
done
# Expect: 4 × HTTP 422 errors.project_type.
```

---
*Last Updated: 2026-09-23 12:34*
