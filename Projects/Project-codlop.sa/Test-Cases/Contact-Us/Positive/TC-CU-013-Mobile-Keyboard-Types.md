---
tc_id: TC-CU-013
title: Verify Usability on Mobile With Correct Virtual Keyboards per Field
priority: Medium
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-003
tags:
  - test-case
  - contact-us
  - positive
  - mobile
  - ux
---

# Test Data
| Field | Value |
| ----- | ----- |
| Devices | iOS Safari (iPhone 13+) and Android Chrome (recent) |

# Preconditions
- Open https://test.codlop.sa/ on a real phone and reach the `#contact` form.
- The phone has its default virtual keyboard (no external keyboard attached).

# Steps
1. Tap each field and observe the keyboard that opens: name, phone, email, then check the dropdown/textarea/submit are usable.

# Expected Result
- Phone field (`type=tel`, `inputmode=tel`) opens the numeric/phone keyboard with `+` and space.
- Email field (`inputmode=email`) opens the keyboard with `@` and `.` keys.
- Name opens normal text keyboard; dropdown and textarea usable; submit reachable without zoom traps.

# Notes
- Field attributes verified in DOM: phone `type="tel" inputmode="tel" dir="ltr"`, email `type="email" inputmode="email" dir="ltr"`.

# Attachments
- Screenshots of each validation/confirmation state.
- Screen recording for interaction-focused checks.

# Script
```bash
# DOM pre-check of the input attributes that drive mobile keyboards (read-only GET); device pass is manual.
curl -sS https://test.codlop.sa/ -o /tmp/tc-cu-013.html
python3 - <<'PY'
import re
h = open("/tmp/tc-cu-013.html", encoding="utf-8").read()
ph = re.search(r'<input id="f-phone"[^>]*>', h)
em = re.search(r'<input id="f-email"[^>]*>', h)
assert ph and em, "phone/email inputs missing"
for needle, tag, label in [('type="tel"', ph.group(0), "phone"),
                           ('inputmode="tel"', ph.group(0), "phone"),
                           ('dir="ltr"', ph.group(0), "phone"),
                           ('type="email"', em.group(0), "email"),
                           ('inputmode="email"', em.group(0), "email"),
                           ('dir="ltr"', em.group(0), "email")]:
    assert needle in tag, f"{needle} missing on {label} input: {tag[:90]}"
print("OK — tel/email input attributes present (numeric phone keypad / @-key on iOS + Android is the manual step).")
PY
```

---
*Last Updated: 2026-09-23 13:12*
