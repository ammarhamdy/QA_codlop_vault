---
tc_id: TC-TEAM-068
title: Complete Full Profile With Keyboard Only No Mouse
priority: Low
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - accessibility
  - keyboard
  - creative
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://test.codlop.sa/admin/team` |
| Input | Keyboard only: `Tab`, `Enter`/`Space`, type, file-picker via keyboard |

# Preconditions
- Logged in as admin; mouse/trackpad set aside.

# Steps
1. `Tab` to each field; fill AR+EN names/titles/bios.
2. Open file picker via keyboard; select a valid image.
3. Select a placeholder, toggle both visibility settings, and submit via keyboard.
4. Verify saved member matches all entered values.

# Expected Result
- Entire workflow completable without a mouse; saved data correct; no unreachable step.

# Notes
- End-to-end counterpart to TC-TEAM-032 (tab order audit).

# Attachments
- Screen recording + saved-record verification.

# Script
```shell
# Manual keyboard-only test — no curl equivalent.
echo "verify saved record via admin list after keyboard-only submission"
```

---
*Last Updated: 2026-09-24 00:00*
