---
tc_id: TC-CU-043
title: Press Back Mid-Submit and Verify No Stuck Busy State on Return
priority: Medium
status: Ready
type: Functional
linked_requirement: REQ-CODLOP-SA-003
tags:
  - test-case
  - contact-us
  - creative
  - navigation
  - error-handling
---

# Test Data
| Field | Value |
| ----- | ----- |
| Sequence | Slow 3G → submit → instant browser Back → forward/refocus |

# Preconditions
- Open https://test.codlop.sa/ in a current desktop browser and scroll to the `#contact` form (“أخبرنا عن مشروعك”).
- Browser is online; no extension blocks same-origin XHR to `/contact-submit`.

# Steps
1. Fill a valid form; submit under Slow 3G and immediately hit Back.
2. Return to the form (forward navigation or re-open #contact).

# Expected Result
- Busy indicator is NOT permanently stuck — button returns to actionable state (form may be re-usable or re-filled, per policy).
- Resubmission after return behaves correctly and produces no phantom duplicate (check lead count).

# Notes
- If the in-flight POST completed while user navigated away, exactly ONE lead exists — the UI must not pretend otherwise.

# Attachments
- Screenshots of each validation/confirmation state.
- Screen recording for interaction-focused checks.

# Script
```bash
# UI-driven manual test — the runner script is used only as an endpoint sanity check:
bash Projects/Project-codlop.sa/Scripts/contect-us.sh
```

---
*Last Updated: 2026-09-23 12:42*
