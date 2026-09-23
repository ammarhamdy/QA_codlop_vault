---
tc_id: TC-CU-010
title: Verify Consent Text Understandability and Label-Click Toggle
priority: Medium
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-003
tags:
  - test-case
  - contact-us
  - positive
  - consent
  - ux
---

# Test Data
| Field | Value |
| ----- | ----- |
| Consent copy | `أوافق على معالجة بياناتي للتواصل معي بخصوص هذا الطلب، وفق سياسة الخصوصية.` |
| EN variant | Verify /lang/en equivalent |

# Preconditions
- Open https://test.codlop.sa/ in a current desktop browser and scroll to the `#contact` form (“أخبرنا عن مشروعك”).
- Browser is online; no extension blocks same-origin XHR to `/contact-submit`.

# Steps
1. Read the consent statement — confirm it explains purpose and references the privacy policy.
2. Click directly on the checkbox → checked.
3. Click on the middle of the consent *text* → checkbox toggles too.
4. Click again to uncheck → error state behaves.

# Expected Result
- Both the input and its label text toggle the control (input is wrapped in `<label class="consent">`).
- Copy is clear, mentions data processing purpose; privacy link (if any) resolves.

# Notes
- Toggle on label click is an explicit product requirement in the Contact Us spec.

# Attachments
- Screenshots of each validation/confirmation state.
- Screen recording for interaction-focused checks.

# Script
```bash
# DOM pre-check: consent checkbox must be wrapped by its label (label-click toggling), copy intact.
curl -sS https://test.codlop.sa/ -o /tmp/tc-cu-010.html
python3 - <<'PY'
import re
h = open("/tmp/tc-cu-010.html", encoding="utf-8").read()
m = re.search(r'<label class="consent">(.*?)</label>', h, re.S)
assert m, 'consent control not wrapped in <label class="consent">'
inner = m.group(1)
assert re.search(r'<input[^>]*name="consent"[^>]*>', inner), \
    "checkbox must sit INSIDE the label (otherwise label click will not toggle it)"
copy = re.search(r'<span>(.*?)</span>', inner, re.S)
assert copy, "consent copy missing"
text = re.sub(r"\s+", " ", copy.group(1)).strip()
assert "أوافق على معالجة بياناتي" in text, f"unexpected consent copy: {text}"
print("OK — label wraps checkbox; copy:", text)
print("Manual: click the text and the box (both toggle); judge clarity of the statement on AR and /lang/en.")
PY
```

---
*Last Updated: 2026-09-23 13:09*
