---
tc_id: TC-CU-040
title: Use Browser Autofill for Name, Phone and Email and Verify Correct Mapping
priority: Medium
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-003
tags:
  - test-case
  - contact-us
  - creative
  - autofill
  - ux
---

# Test Data
| Field | Value |
| ----- | ----- |
| Browser | Chrome autofill profile: `Omar Al-Fayed`, `+966 55 777 8899`, `omar.fayed@example.com` |

# Preconditions
- Open https://test.codlop.sa/ in a current desktop browser and scroll to the `#contact` form (“أخبرنا عن مشروعك”).
- Browser is online; no extension blocks same-origin XHR to `/contact-submit`.

# Steps
1. Trigger the autofill suggestion on the name field and accept the profile fill.
2. Verify phone/email land in their own fields (autocomplete=name/tel/email).
3. Complete type/message/consent manually and submit.

# Expected Result
- Only the three identity fields are populated; message, select and consent are untouched.
- Autofilled values pass validation identically to typed ones and submit cleanly.

# Notes
- Also try iOS quick-type contact autofill if a device is available.

# Attachments
- Screenshots of each validation/confirmation state.
- Screen recording for interaction-focused checks.

# Script
```bash
# UI-driven manual test — the runner script is used only as an endpoint sanity check:
bash Projects/Project-codlop.sa/Scripts/contect-us.sh
```

---
*Last Updated: 2026-09-23 12:39*
