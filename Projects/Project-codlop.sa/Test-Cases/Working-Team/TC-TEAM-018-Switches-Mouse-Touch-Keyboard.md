---
tc_id: TC-TEAM-018
title: Verify Switch Controls Operable Via Mouse Touch and Keyboard
priority: Medium
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - accessibility
  - switches
---

# Test Data
| Field | Value |
| ----- | ----- |
| Controls | visibility switch (`is_visible`), email-display switch, any other toggles on the form |
| Inputs | mouse click, touch tap (mobile/emulator), keyboard (`Tab` + `Space`/`Enter`) |

# Preconditions
- Edit form open on desktop + mobile viewport (or emulator with touch).

# Steps
1. Tab through the form; verify each switch receives visible focus.
2. Toggle each switch with `Space` (and `Enter`); verify state flips and persists on save.
3. Toggle each switch with mouse click; verify state flips.
4. On mobile viewport/emulator, tap each switch; verify state flips.
5. Verify screen-reader label association (accessible name + `role=switch` / `checked` state).

# Expected Result
- All switches operable via keyboard, mouse, and touch — state changes visibly each time.
- Focus indicator visible; no keyboard trap.
- Assistive tech announces each switch name and on/off state correctly.

# Notes
- Accessibility gate for the visibility/email switches used in TC-TEAM-013–017.
- Log any switch that only responds to pointer events (fails WCAG 2.1.1).

# Attachments
- Screen recording (keyboard pass + touch pass); screenshot of focus ring.

# Script
```shell
# Manual / assistive-tech pass — no curl equivalent.
# Optional state probe after each input-mode toggle:
curl -s -b "$COOKIE" "https://test.codlop.sa/admin/team/{id}/edit" | grep -Eo '(is_visible|show_email)[^>]{0,60}checked'
# Expect: checked-state in HTML matches the last UI toggle after save.
```

---
*Last Updated: 2026-09-24 00:00*
