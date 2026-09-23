---
tc_id: TC-CU-007
title: Submit Message With Arabic, English, Numbers, Punctuation and Line Breaks
priority: Medium
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-001
tags:
  - test-case
  - contact-us
  - positive
  - message
---

# Test Data
| Field | Value |
| ----- | ----- |
| Project details | `Msg-Arabic-English-Multiline.txt` — `السلام عليكم، / Project: Loyalty app / Budget: 80,000 SAR / Timeline: Q1 2027! / هل هذا ممكن؟` |
| Other fields | Valid baseline (TC-CU-001) |

# Preconditions
- Open https://test.codlop.sa/ in a current desktop browser and scroll to the `#contact` form (“أخبرنا عن مشروعك”).
- Browser is online; no extension blocks same-origin XHR to `/contact-submit`.

# Steps
1. Paste the multi-line mixed content into the message textarea.
2. Submit.
3. Compare the stored/echoed message with the source, character by character.

# Expected Result
- All lines, Arabic + Latin text, digits, `, ! ?` punctuation and line breaks are preserved.
- No reflow/mangling in confirmation or notification (newlines rendered as breaks, not literal `\n`).

# Notes
- Source file: `Test-Data/Msg-Arabic-English-Multiline.txt` (5 lines).

# Attachments
- Screenshots of each validation/confirmation state.
- Screen recording for interaction-focused checks.

# Script
```bash
# Ready to run from the vault root. Section 2 token/cookies must be fresh — reload https://test.codlop.sa/ if the response is HTTP 419.
TD="Projects/Project-codlop.sa/Test-Cases/Contact-Us/Test-Data"
bash Projects/Project-codlop.sa/Scripts/contect-us.sh \
  --name "Khalid Saad Al-Ghamdi" \
  --phone "+966 50 123 4567" \
  --email "khalid@example.com" \
  --project-type "تطبيق جوال" \
  --message "$(cat "$TD/Msg-Arabic-English-Multiline.txt")"
# Expect: HTTP 200; stored/echoed message preserves all 5 lines (Arabic + English + digits + punctuation + newlines).
```

---
*Last Updated: 2026-09-23 13:06*
