---
tc_id: TC-CU-041
title: Verify Password Managers Touching the Anti-Spam Field Do Not Wrongly Block Legitimate Users
priority: Medium
status: Ready
type: Functional
linked_requirement: REQ-CODLOP-SA-002
tags:
  - test-case
  - contact-us
  - creative
  - honeypot
  - autofill
  - security
---

# Test Data
| Field | Value |
| ----- | ----- |
| Tooling | 1Password / Bitwarden / browser saved-password offer on the form |
| Honeypot | `_x_y_z_` carries `autocomplete="new-password"` |

# Preconditions
- Open https://test.codlop.sa/ in a current desktop browser and scroll to the `#contact` form (“أخبرنا عن مشروعك”).
- Browser is online; no extension blocks same-origin XHR to `/contact-submit`.

# Steps
1. Trigger password-manager autofill 'save & fill' flows on the contact form.
2. If a tool attempts to fill `_x_y_z_` (check DevTools), submit anyway.
3. Cross-check: curl with the honeypot filled (TC-CU-029) still gets rejected.

# Expected Result
- Well-behaved tools skip the field (autocomplete=new-password + tabindex=-1).
- If a legitimate user's field was auto-filled, their submission must still succeed while scripted spam remains blocked — a false-positive block on the human is a HIGH bug.

# Notes
- Honeypot field in the live DOM is `_x_y_z_` (“Leave this field empty”, `tabindex=-1`, `autocomplete=new-password`); the runner script does not send it.
- Spam bots fill hidden fields blindly; the defense must discriminate behaviorally, not punish autofill users.

# Attachments
- Screenshots of each validation/confirmation state.
- Screen recording for interaction-focused checks.

# Script
```bash
# UI-driven manual test — no curl runner execution; tooling-behavior case; honeypot API evidence already in TC-CU-029.
```

---
*Last Updated: 2026-09-23 12:40*
