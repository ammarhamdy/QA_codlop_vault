---
tc_id: TC-CU-031
title: Guarantee Single Request on Double-Click / Repeated Enter During Submit
priority: High
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-002
tags:
  - test-case
  - contact-us
  - negative
  - debounce
---

# Test Data
| Field | Value |
| ----- | ----- |
| Trigger | Hard double-click + Enter mash for 3 s during a Slow-3G submit |
| Payload | valid baseline |

# Preconditions
- Open https://test.codlop.sa/ in a current desktop browser and scroll to the `#contact` form (“أخبرنا عن مشروعك”).
- Browser is online; no extension blocks same-origin XHR to `/contact-submit`.

# Steps
1. Throttle to Slow 3G.
2. Click `إرسال الطلب` twice rapidly, then hold/hammer Enter.

# Expected Result
- Exactly one POST is dispatched (Network tab).
- Duplicate attempts are swallowed by the busy lock (see TC-CU-012).
- Only one lead/success message results.

# Notes
- Complements 012: that verifies indicator, this verifies request count.

# Attachments
- Screenshots of each validation/confirmation state.
- Screen recording for interaction-focused checks.

# Script
```bash
# UI-driven manual test — the runner script is used only as an endpoint sanity check:
bash Projects/Project-codlop.sa/Scripts/contect-us.sh
```

---
*Last Updated: 2026-09-23 12:30*
