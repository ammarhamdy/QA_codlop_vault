---
tc_id: TC-CU-014
title: Verify RTL Text Displays Right-to-Left While Phone and Email Stay LTR
priority: Medium
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-003
tags:
  - test-case
  - contact-us
  - positive
  - rtl
  - localization
---

# Test Data
| Field | Value |
| ----- | ----- |
| Arabic content | name `خالد عبدالعزيز`, message with `تطبيق 50% خصم` and numbers |
| LTR fields | phone `+966 50 123 4567`, email `khalid@example.com` |

# Preconditions
- Open https://test.codlop.sa/ in a current desktop browser and scroll to the `#contact` form (“أخبرنا عن مشروعك”).
- Browser is online; no extension blocks same-origin XHR to `/contact-submit`.

# Steps
1. Enter Arabic name/message with embedded Latin words and numbers on the default AR (RTL) page.
2. Type the phone and email values.
3. Inspect alignment and caret behavior of every field.

# Expected Result
- Arabic text is right-aligned with correct bidi order (`تطبيق 50% خصم` renders sensibly).
- Phone and email inputs carry `dir="ltr"` — digits/emails read left-to-right and caret starts at the left.
- No mirroring of `+966`, URLs or emails in the confirmation/echo.

# Notes
- Page-level `dir="rtl"` comes from the AR locale; check /lang/en keeps LTR layout.

# Attachments
- Screenshots of each validation/confirmation state.
- Screen recording for interaction-focused checks.

# Script
```bash
# DOM pre-check of the bidi direction rules (read-only GET); visual RTL/LTR rendering is manual.
curl -sS https://test.codlop.sa/ -o /tmp/tc-cu-014.html
python3 - <<'PY'
import re
h = open("/tmp/tc-cu-014.html", encoding="utf-8").read()
assert re.search(r'<html[^>]*dir="rtl"', h), "AR page must be dir=rtl"
for fid in ("f-phone", "f-email"):
    tag = re.search(rf'<input id="{fid}"[^>]*>', h)
    assert tag and 'dir="ltr"' in tag.group(0), f"{fid} must stay dir=ltr"
print("OK — page RTL; phone/email inputs LTR.")
print("Manual: check 'تطبيق 50% خصم' bidi run, LTR digits in phone/email, no mirrored +966/URLs.")
PY
```

---
*Last Updated: 2026-09-23 13:13*
