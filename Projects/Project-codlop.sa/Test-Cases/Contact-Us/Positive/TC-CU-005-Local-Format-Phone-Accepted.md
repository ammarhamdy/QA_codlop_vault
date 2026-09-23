---
tc_id: TC-CU-005
title: Submit Saudi Mobile in Local Format 05XXXXXXXX and Verify Consistent Handling
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
| Saudi mobile | `0592123456` |
| Full name | `Reem Khalid Al-Bishi` |
| Project type | `متجر إلكتروني` |
| Project details | `متجر لبيع المستلزمات المنزلية.` |
| Consent | checked |

# Preconditions
- Open https://test.codlop.sa/ in a current desktop browser and scroll to the `#contact` form (“أخبرنا عن مشروعك”).
- Browser is online; no extension blocks same-origin XHR to `/contact-submit`.

# Steps
1. Enter `0592123456` (10-digit trunk format).
2. Complete and submit.
3. Compare the stored number with TC-CU-004's `+966…` submission.

# Expected Result
- Local format accepted.
- Server normalizes it consistently with the international format (same stored shape, e.g. +966592123456).

# Notes
- Consistency with the +966 format is the point of this case — flag a bug if the two formats store differently.

# Attachments
- Screenshots of each validation/confirmation state.
- Screen recording for interaction-focused checks.

# Script
```bash
# Ready to run from the vault root. Section 2 token/cookies must be fresh — reload https://test.codlop.sa/ if the response is HTTP 419.
bash /home/am/Vault/QA_codlop_vault/Projects/Project-codlop.sa/Scripts/contect-us.sh \
  --name "Reem Khalid Al-Bishi" \
  --phone "0592123456" \
  --email "" \
  --project-type "متجر إلكتروني" \
  --message "متجر لبيع المستلزمات المنزلية."
# Expect: HTTP 200; local 05XXXXXXXX format accepted and normalized consistently with TC-CU-004 (+966 form).
```

---
*Last Updated: 2026-09-23 13:04*
