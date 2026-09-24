---
tc_id: TC-TEAM-032
title: Verify Keyboard Reaches All Fields Upload Placeholder Toggles In Order
priority: Medium
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - accessibility
  - keyboard
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://test.codlop.sa/admin/team` |
| Navigation | `Tab` / `Shift+Tab`, `Enter`/`Space` for controls |

# Preconditions
- Logged in as admin; member form open; mouse untouched for this test.

# Steps
1. Starting from the first field, press `Tab` through the entire form.
2. Record the focus order: text fields → image upload → placeholder selector → visibility toggles → save.
3. Activate upload, placeholder, and both toggles using keyboard only.
4. Confirm every control is reachable and its state change is announced/visible.

# Expected Result
- All editable fields, upload control, placeholder selector, and both visibility controls reachable in a logical order with visible focus; no keyboard traps.

# Notes
- Extends TC-TEAM-018 (switches operable) to full-form tab order; related to TC-TEAM-068 (keyboard-only end-to-end).

# Attachments
- Tab-order log / screen recording.

# Script
```shell
# Manual keyboard test — no curl equivalent.
# Optional focusable-element audit:
curl -s -b "$COOKIE" "https://test.codlop.sa/admin/team/create" | grep -o 'tabindex="-[0-9]"' | sort | uniq -c
# Expect: no positive-tabindex traps; default DOM order should be logical.
```

---
*Last Updated: 2026-09-24 00:00*
