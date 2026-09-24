---
tc_id: TC-CU-033
title: Recover Gracefully From 5xx / Timeout With Re-Enabled Retry Path
priority: Medium
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-003
tags:
  - test-case
  - contact-us
  - negative
  - error-handling
---

# Test Data
| Field | Value |
| ----- | ----- |
| Trigger | DevTools Network → request blocking of `/contact-submit` (simulated 500/timeout) |

# Preconditions
- Open https://test.codlop.sa/ in a current desktop browser and scroll to the `#contact` form (“أخبرنا عن مشروعك”).
- Browser is online; no extension blocks same-origin XHR to `/contact-submit`.

# Steps
1. Block the endpoint; submit with a valid form.
2. Watch the busy indicator end and the error render.
3. Unblock and retry.

# Expected Result
- Busy state (`جاري الإرسال…`) always terminates on error — button re-enabled.
- Generic safe error copy (no stack leak); entered values retained; retry succeeds once server recovers.

# Notes
- The form uses `novalidate`; validation copy is rendered by the site script — verify actual wording against the approved design copy.

# Attachments
- Screenshots of each validation/confirmation state.
- Screen recording for interaction-focused checks.

# Script
```bash
# UI-driven manual test — no curl runner execution; request-blocking in DevTools drives the simulated server failure.
```

---
*Last Updated: 2026-09-23 12:32*
