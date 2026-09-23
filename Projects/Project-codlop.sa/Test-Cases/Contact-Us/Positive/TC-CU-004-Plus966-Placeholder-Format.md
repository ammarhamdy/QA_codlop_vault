---
tc_id: TC-CU-004
title: Submit Saudi Mobile in Placeholder Format +966 5X XXX XXXX
priority: High
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-001
tags:
  - test-case
  - contact-us
  - positive
  - phone
---

# Test Data
| Field | Value |
| ----- | ----- |
| Saudi mobile | `+966 53 123 9876` |
| Full name | `Faisal Graham Al-Otaibi` |
| Project type | `نظام إداري` |
| Project details | `نظام لإدارة مخزون معرض سيارات.` |
| Consent | checked |

# Preconditions
- Open https://test.codlop.sa/ in a current desktop browser and scroll to the `#contact` form (“أخبرنا عن مشروعك”).
- Browser is online; no extension blocks same-origin XHR to `/contact-submit`.

# Steps
1. Compare the entered value with the field placeholder `+966 5X XXX XXXX`.
2. Enter `+966 53 123 9876`, complete the form, submit.

# Expected Result
- Format is accepted (matches placeholder).
- Stored/normalized number corresponds to +966531239876.
- Field `dir=ltr` keeps the number readable left-to-right.

# Notes
- `53` is a valid STC prefix range; other valid second digits: 0/3/4/5/6 (Saudi mobile 5X).

# Attachments
- Screenshots of each validation/confirmation state.
- Screen recording for interaction-focused checks.

# Script
```bash
# Ready to run from the vault root. Section 2 token/cookies must be fresh — reload https://test.codlop.sa/ if the response is HTTP 419.
bash Projects/Project-codlop.sa/Scripts/contect-us.sh \
  --name "Faisal Graham Al-Otaibi" \
  --phone "+966 53 123 9876" \
  --email "" \
  --project-type "نظام إداري" \
  --message "نظام لإدارة مخزون معرض سيارات."
# Expect: HTTP 200; placeholder format accepted, number stored normalized (+966531239876).
```

---
*Last Updated: 2026-09-23 13:03*
