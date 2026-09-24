---
tc_id: TC-TEAM-051
title: Rapidly Switch Placeholders Verify No Stale Preview
priority: Low
status:
type: Functional
linked_requirement: REQ-CODLOP-SA-TEAM-001
tags:
  - test-case
  - working-team
  - placeholder
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://test.codlop.sa/admin/team` |
| Form field | `placeholder` (all available options) |

# Preconditions
- Logged in as admin; member form open with no real image.

# Steps
1. Click through all placeholder options rapidly (5+ switches in a few seconds).
2. Stop on a known last option; record preview shown.
3. Save; verify public card matches the final selection.

# Expected Result
- Preview always matches the currently selected option; saved card equals the final selection (no stale/incorrect render).

# Notes
- Race-condition check for async preview rendering.

# Attachments
- Screen recording of rapid switching + final saved card.

# Script
```shell
# Manual UI race test — no curl equivalent.
# Post-save verification only:
curl -s -b "$COOKIE" "https://test.codlop.sa/admin/team/{id}/edit" | grep -o 'placeholder[^>]*selected[^>]*' | head -2
# Expect: only the final placeholder marked selected.
```

---
*Last Updated: 2026-09-24 00:00*
