---
tc_id: TC-CU-003
title: Enter Arabic Full Name and Verify Acceptance and Preservation
priority: Medium
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-001
tags:
  - test-case
  - contact-us
  - positive
  - name
  - localization
---

# Test Data
| Field | Value |
| ----- | ----- |
| Full name | `منيرة فهد العلي المطيري` |
| Saudi mobile | `+966 55 123 4567` |
| Project type | `موقع تعريفي` |
| Project details | `أرغب في موقع تعريفي لمكتب محاماة في الرياض.` |
| Consent | checked |

# Preconditions
- Open https://test.codlop.sa/ in a current desktop browser and scroll to the `#contact` form (“أخبرنا عن مشروعك”).
- Browser is online; no extension blocks same-origin XHR to `/contact-submit`.

# Steps
1. Type/paste the Arabic name into the name field.
2. Complete remaining fields and submit.
3. Re-open the stored lead (confirmation/email/admin) and inspect the name.

# Expected Result
- Name accepted without validation error.
- Arabic string is stored and echoed back byte-for-byte (UTF-8, no mojibake, no trimming of internal spaces).

# Notes
- Arabic script is explicitly allowed by spec (1–120 chars, Arabic/English/hyphen/diacritics).

# Attachments
- Screenshots of each validation/confirmation state.
- Screen recording for interaction-focused checks.

# Script
```shell
# Ready to run from the vault root. Section 2 token/cookies must be fresh — reload https://test.codlop.sa/ if the response is HTTP 419.
bash /home/am/Vault/QA_codlop_vault/Projects/Project-codlop.sa/Scripts/contect-us.sh \
  --name "منيرة فهد العلي المطيري" \
  --phone "+966551234567" \
  --email "" \
  --project-type "موقع تعريفي" \
  --message "أرغب في موقع تعريفي لمكتب محاماة في الرياض." | jq .
# Expect: HTTP 200; response/lead echoes the Arabic name byte-for-byte (UTF-8, no mojibake).
```

---
*Last Updated: 2026-09-23 13:02*
