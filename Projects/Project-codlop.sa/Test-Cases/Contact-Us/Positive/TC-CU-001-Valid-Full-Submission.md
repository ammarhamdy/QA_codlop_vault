---
tc_id: TC-CU-001
title: Submit Contact Form With All Valid Fields and Verify Acceptance
priority: High
status:
  - completed
type: Functional
linked_requirement: REQ-CODLOP-SA-001
tags:
  - test-case
  - contact-us
  - positive
  - form-submission
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Full name | `Abdullah Mohammed Al-Harbi` |
| Saudi mobile | `+966 50 123 4567` |
| Email | `abdullah.alharbi@example.com` |
| Project type | `تطبيق جوال` |
| Project details | `نحتاج تطبيق جوال لحجز مواعيد صالونات الحلاقة الرجالية في بريدة مع رسائل تذكير SMS.` |
| Consent | checked (`consent=1`) |

# Preconditions
- Open https://test.codlop.sa/ in a current desktop browser and scroll to the `#contact` form (“أخبرنا عن مشروعك”).
- Browser is online; no extension blocks same-origin XHR to `/contact-submit`.

# Steps
1. Enter the full name, mobile number and email.
2. Select `تطبيق جوال` from the Project type dropdown.
3. Enter the Arabic project details text.
4. Tick the consent checkbox via the box itself.
5. Click `إرسال الطلب` and observe the XHR in DevTools.

# Expected Result
- HTTP 2xx success response; on-page success confirmation appears.
- No field-level validation errors are shown.
- Lead is stored with the exact submitted values, including the Arabic project type.
- Honeypot `_x_y_z_` is submitted empty and ignored.

# Notes
- Golden path for the module; run first in every regression pass.
- Honeypot field in the live DOM is `_x_y_z_` (“Leave this field empty”, `tabindex=-1`, `autocomplete=new-password`); the runner script does not send it.

# Attachments
- Screenshots of each validation/confirmation state.
- Screen recording for interaction-focused checks.

# Script
```shell
# Ready to run from the vault root. Section 2 token/cookies must be fresh — reload https://test.codlop.sa/ if the response is HTTP 419.
bash /home/am/Vault/QA_codlop_vault/Projects/Project-codlop.sa/Scripts/contect-us.sh \
  --name "Abdullah Mohammed Al-Harbi" \
  --phone "+966 50 123 4567" \
  --email "abdullah.alharbi@example.com" \
  --project-type "تطبيق جوال" \
  --message "نحتاج تطبيق جوال لحجز مواعيد صالونات الحلاقة الرجالية في بريدة مع رسائل تذكير SMS." \
  --consent 1
# Expect: HTTP 200 JSON success (UI path: same data typed into the #contact form).
```

---
*Last Updated: 2026-09-23 13:00*
