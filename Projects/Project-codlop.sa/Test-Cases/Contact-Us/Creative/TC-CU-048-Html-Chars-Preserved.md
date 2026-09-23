---
tc_id: TC-CU-048
title: Enter Legitimate Angle Brackets, Quotes, Ampersand and Emoji; Preserve as Text
priority: Medium
status: Ready
type: Functional
linked_requirement: REQ-CODLOP-SA-001
tags:
  - test-case
  - contact-us
  - creative
  - escaping
  - message
---

# Test Data
| Field | Value |
| ----- | ----- |
| message | `أحتاج <موقع تعريفي> لمشروعي "الكود" — 100% & 2027 🙂 <br>` |

# Preconditions
- Open https://test.codlop.sa/ in a current desktop browser and scroll to the `#contact` form (“أخبرنا عن مشروعك”).
- Browser is online; no extension blocks same-origin XHR to `/contact-submit`.
- Content is legitimate business text using markup-looking characters (contrast TC-CU-030, which attacks).

# Steps
1. Paste the string into message; also try `<` and `&` in name.
2. Submit; inspect every echo surface.

# Expected Result
- Accepted and stored verbatim.
- Rendered everywhere as literal text: `<br>` never produces a line break, quotes/ampersand appear intact (escaped output).

# Notes
- The line-break check catches accidental double-decoding into HTML.

# Attachments
- Screenshots of each validation/confirmation state.
- Screen recording for interaction-focused checks.

# Script
```bash
# In Projects/Project-codlop.sa/Scripts/contect-us.sh — set Section 3 (Form Data Payload):
NAME="Saad & Co <Qassim>"
PHONE="+966 50 123 4567"
EMAIL=""
PROJECT_TYPE="موقع تعريفي"
MESSAGE="أحتاج <موقع تعريفي> لمشروعي \"الكود\" — 100% & 2027 🙂 <br>"
bash Projects/Project-codlop.sa/Scripts/contect-us.sh
# Expect: HTTP 200; echo escaped, length 14 < maxlength for name part check if rejected.
```

---
*Last Updated: 2026-09-23 12:47*
