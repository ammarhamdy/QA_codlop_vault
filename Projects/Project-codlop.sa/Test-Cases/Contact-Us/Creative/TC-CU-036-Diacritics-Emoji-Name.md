---
tc_id: TC-CU-036
title: Paste Name With Tashkeel, Apostrophe, Hyphen and Emoji Without Corruption
priority: Medium
status: Ready
type: Functional
linked_requirement: REQ-CODLOP-SA-001
tags:
  - test-case
  - contact-us
  - creative
  - name
  - localization
  - encoding
---

# Test Data
| Field | Value |
| ----- | ----- |
| name | `سَلْمَى بن عَبْدِالرَّحْمَن آل سعيد — O'Donnell-Lars 👨‍👩‍👧` (diacritics + em dash + apostrophe + hyphen + ZWJ family emoji) |

# Preconditions
- Open https://test.codlop.sa/ in a current desktop browser and scroll to the `#contact` form (“أخبرنا عن مشروعك”).
- Browser is online; no extension blocks same-origin XHR to `/contact-submit`.

# Steps
1. Paste the composite name (verify it is ≤120 chars so maxlength isn't the subject).
2. Submit; inspect echo/lead storage and any email notification.

# Expected Result
- Accepted (Arabic + Tashkeel + Latin + punctuation allowed by spec).
- Stored/displayed with all codepoints intact: FATHATAN on ل, ZWJ emoji not split, no `?` or `ï¿½`.

# Notes
- Spec allows Arabic script, English, diacritics, hyphens; emoji is the deliberate stretch — record actual server verdict for the REQ.
- If emoji is rejected, the error copy must be clear, and the REQ must state the exclusion.

# Attachments
- Screenshots of each validation/confirmation state.
- Screen recording for interaction-focused checks.

# Script
```bash
# In Projects/Project-codlop.sa/Scripts/contect-us.sh — set Section 3 (Form Data Payload):
NAME="سَلْمَى بن عَبْدِالرَّحْمَن آل سعيد — O'Donnell-Lars 👨‍👩‍👧"
PHONE="+966 50 123 4567"
EMAIL=""
PROJECT_TYPE="تطبيق جوال"
MESSAGE="رسالة صالحة."
bash Projects/Project-codlop.sa/Scripts/contect-us.sh
# Expect: Either HTTP 200 with byte-perfect echo, or a documented 422 rule for emoji.
```

---
*Last Updated: 2026-09-23 12:35*
