---
tc_id: TC-CU-045
title: Verify Layout and Controls at 200% Zoom and 320px Viewport
priority: Medium
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-003
tags:
  - test-case
  - contact-us
  - creative
  - accessibility
  - responsive
---

# Test Data
| Field | Value |
| ----- | ----- |
| Conditions | Ctrl/Cmd `+` to 200% on 1280px; DevTools device width 320px |

# Preconditions
- Open https://test.codlop.sa/ in a current desktop browser and scroll to the `#contact` form (“أخبرنا عن مشروعك”).
- Browser is online; no extension blocks same-origin XHR to `/contact-submit`.

# Steps
1. Trigger validation errors at both sizes so messages render.
2. Inspect fields, error text, dropdown, consent row and submit button.

# Expected Result
- No overlapping or clipped controls; error messages visible and reachable.
- Submit fully reachable; no horizontal scroll at 320px (WCAG 1.4.10 reflow).
- Tap targets remain usable (≥ ~44px).

# Notes
- Focus must never be lost off-screen when errors render near the top.

# Attachments
- Screenshots of each validation/confirmation state.
- Screen recording for interaction-focused checks.

# Script
```bash
# UI-driven manual test — no curl runner execution; responsive/zoom inspection case.
```

---
*Last Updated: 2026-09-23 12:44*
