---
tc_id: TC-CU-039
title: Paste 4,000-Char Mixed RTL/LTR Message With URLs, Bullets and Newlines
priority: Medium
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-001
tags:
  - test-case
  - contact-us
  - creative
  - message
  - rtl
  - boundary
---

# Test Data
| Field | Value |
| ----- | ----- |
| message | `Test-Data/Msg-4000-Mixed.txt` — Arabic+English lines, URL `https://test.codlop.sa/works`, `•` and `-` bullets, emoji, exactly 4,000 chars |

# Preconditions
- Open https://test.codlop.sa/ in a current desktop browser and scroll to the `#contact` form (“أخبرنا عن مشروعك”).
- Browser is online; no extension blocks same-origin XHR to `/contact-submit`.

# Steps
1. Paste the whole file into the textarea.
2. Scroll it and visually verify bidi ordering near the URL and bullets.
3. Submit and inspect the stored/echoed text.

# Expected Result
- Full 4,000 chars accepted (at-limit, cf. TC-CU-008).
- Bidi presentation readable; URL stays LTR; bullets/newlines preserved; no dropped or reordered segments in storage.

# Notes
- Re-generate the file with `python3` slicing if edited — length must stay exactly 4000.

# Attachments
- Screenshots of each validation/confirmation state.
- Screen recording for interaction-focused checks.

# Script
```bash
# In Projects/Project-codlop.sa/Scripts/contect-us.sh — set Section 3 (Form Data Payload):
NAME="بدر ناصر"
PHONE="+966 50 123 4567"
EMAIL=""
PROJECT_TYPE="نظام إداري"
MESSAGE="$(cat Projects/Project-codlop.sa/Test-Cases/Contact-Us/Test-Data/Msg-4000-Mixed.txt)"
bash Projects/Project-codlop.sa/Scripts/contect-us.sh
# Expect: HTTP 200; stored length = 4000 with structure intact.
```

---
*Last Updated: 2026-09-23 12:38*
