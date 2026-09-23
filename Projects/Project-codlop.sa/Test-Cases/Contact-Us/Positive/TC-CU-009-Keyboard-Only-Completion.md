---
tc_id: TC-CU-009
title: Complete and Submit the Form Using Keyboard Only
priority: Medium
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-003
tags:
  - test-case
  - contact-us
  - positive
  - accessibility
  - keyboard
---

# Test Data
| Field | Value |
| ----- | ----- |
| Input device | Keyboard only (mouse disabled/ignored) |
| Data | Any valid TC-CU-001 payload |

# Preconditions
- Open https://test.codlop.sa/ in a current desktop browser and scroll to the `#contact` form (“أخبرنا عن مشروعك”).
- Browser is online; no extension blocks same-origin XHR to `/contact-submit`.

# Steps
1. Focus the page with Tab until the name field is reached.
2. Tab through: name → phone → email → project type → message → consent → submit.
3. Toggle consent with Space; select a project type with arrows; submit with Enter.

# Expected Result
- Tab order follows visual/DOM order name → phone → email → type → message → consent → submit.
- Honeypot `_x_y_z_` is never focused (`tabindex=-1`).
- Focus is always visible; nothing traps focus; Enter on the button submits once.

# Notes
- WCAG 2.1.1/2.4.3. Compare against TC-CU-044 for the screen-reader layer.

# Attachments
- Screenshots of each validation/confirmation state.
- Screen recording for interaction-focused checks.

# Script
```bash
# DOM-level pre-check for the keyboard-order case (read-only GET); the actual Tab walk is manual in-browser.
curl -sS https://test.codlop.sa/ -o /tmp/tc-cu-009.html
python3 - <<'PY'
import re
h = open("/tmp/tc-cu-009.html", encoding="utf-8").read()
order = ['id="_x_y_z_"', 'id="f-name"', 'id="f-phone"', 'id="f-email"',
         'id="f-type"', 'id="f-msg"', 'name="consent"']
pos = [h.index(t) for t in order]
assert pos == sorted(pos), f"DOM order broken: {pos}"
hp = re.search(r'<input[^>]*id="_x_y_z_"[^>]*>', h)
assert hp and 'tabindex="-1"' in hp.group(0), "honeypot must be tabindex=-1 (skipped by Tab)"
assert re.search(r'<button[^>]*type="submit"[^>]*>', h), "submit button missing"
print("Tab order (DOM): honeypot[skipped] -> name -> phone -> email -> type -> msg -> consent -> submit")
print("Manual: complete the form with keyboard only — confirm this order, visible focus, Space toggles consent, Enter submits once.")
PY
```

---
*Last Updated: 2026-09-23 13:08*
