---
tc_id: TC-CU-032
title: Show Recoverable Error and Preserve Entered Data When Network Drops Mid-Submit
priority: Medium
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-003
tags:
  - test-case
  - contact-us
  - negative
  - error-handling
  - network
---

# Test Data
| Field | Value |
| ----- | ----- |
| Trigger | DevTools → Network → Offline the moment submit is clicked |
| Recovery | Back to online, retry |

# Preconditions
- Open https://test.codlop.sa/ in a current desktop browser and scroll to the `#contact` form (“أخبرنا عن مشروعك”).
- Browser is online; no extension blocks same-origin XHR to `/contact-submit`.

# Steps
1. Fill the whole form; go Offline; click submit.
2. Observe the failure feedback and the form contents.
3. Go Online and resubmit.

# Expected Result
- A recoverable, user-friendly error is shown (network problem + try again) — not a spinner forever and not a raw exception.
- All entered values remain in the fields.
- Retry after reconnecting succeeds normally.

# Notes
- If the site queues/auto-retries instead, verify the queue is surfaced honestly (no duplicate leads).

# Attachments
- Screenshots of each validation/confirmation state.
- Screen recording for interaction-focused checks.

# Script
```bash
# UI-driven manual test — no curl runner execution; browser DevTools network emulation drives this case.
```

---
*Last Updated: 2026-09-23 12:31*
