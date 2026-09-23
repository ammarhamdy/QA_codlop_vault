---
tc_id: TC-CU-034
title: Verify Consistent Data-Loss Behavior When Leaving the Form Before Submitting
priority: Medium
status: Ready
type: Functional
linked_requirement: REQ-CODLOP-SA-003
tags:
  - test-case
  - contact-us
  - negative
  - ux
---

# Test Data
| Field | Value |
| ----- | ----- |
| Trigger | Refresh / close tab / hash-navigate away after typing but before submit |

# Preconditions
- Open https://test.codlop.sa/ in a current desktop browser and scroll to the `#contact` form (“أخبرنا عن مشروعك”).
- Browser is online; no extension blocks same-origin XHR to `/contact-submit`.

# Steps
1. Enter unique values in every field.
2. Attempt F5 refresh, tab close, and hash navigation away.
3. Repeat the /en variant and record actual vs expected policy.

# Expected Result
- Behavior matches the agreed product policy: either a browser leave warning (beforeunload) or an explicitly accepted 'data cleared' — chosen ONE way, consistently, in AR and EN.
- No half-state: silent loss with no warning is a defect; so is a warning on an untouched form.

# Notes
- Policy decision must be recorded in REQ-CODLOP-SA-003; link the final ruling in Notes.

# Attachments
- Screenshots of each validation/confirmation state.
- Screen recording for interaction-focused checks.

# Script
```bash
# UI-driven manual test — no curl runner execution; browser-navigation behavior — no endpoint call involved.
```

---
*Last Updated: 2026-09-23 12:33*
