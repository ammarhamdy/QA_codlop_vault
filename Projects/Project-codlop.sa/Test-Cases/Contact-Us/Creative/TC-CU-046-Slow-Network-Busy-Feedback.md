---
tc_id: TC-CU-046
title: Verify Sending Indicator on Throttled Network Is Prompt and Unambiguous
priority: Medium
status: Ready
type: Functional
linked_requirement: REQ-CODLOP-SA-003
tags:
  - test-case
  - contact-us
  - creative
  - ux
  - network
---

# Test Data
| Field | Value |
| ----- | ----- |
| Throttle | DevTools 'Slow 3G' (~400–500 ms RTT), plus a custom 10 s stall via request blocking |

# Preconditions
- Open https://test.codlop.sa/ in a current desktop browser and scroll to the `#contact` form (“أخبرنا عن مشروعك”).
- Browser is online; no extension blocks same-origin XHR to `/contact-submit`.

# Steps
1. Submit under Slow 3G; time the indicator appearance.
2. While pending, attempt extra clicks/Tab+Enter.
3. Repeat with a 10 s stall.

# Expected Result
- `جاري الإرسال…` appears within ≤1 s and persists until the response.
- No confusing double-action window (indicator delayed >1 s while clicks are swallowed = poor; clicks accepted = fail).
- Long stall still resolves via the error path (see TC-CU-033).

# Notes
- Measure with screenshots at t=0 / t=0.5s / response.

# Attachments
- Screenshots of each validation/confirmation state.
- Screen recording for interaction-focused checks.

# Script
```bash
# UI-driven manual test — the runner script is used only as an endpoint sanity check:
bash Projects/Project-codlop.sa/Scripts/contect-us.sh
```

---
*Last Updated: 2026-09-23 12:45*
