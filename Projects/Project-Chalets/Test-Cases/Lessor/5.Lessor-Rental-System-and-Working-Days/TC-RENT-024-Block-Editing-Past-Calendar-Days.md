---
tc_id: TC-RENT-024
title: Verify System Prevents Editing Past Calendar Days
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Rental-System-and-Working-Days.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Selected Date | `2026-10-10` (Historical past date) |
| Current Date | `2026-10-22` |

# Preconditions
1. Lessor is on the chalet calendar view.

# Steps
1. Navigate back to previous weeks and tap on past date `2026-10-10`.
2. Check whether the "Edit Selected" button becomes enabled.
3. If an API request `/api/calendar/edit` is sent with date `2026-10-10`.

# Expected Result
1. Past dates cannot be highlighted or selected for editing in the user interface.
2. The "Edit Selected" control remains disabled.
3. Any direct API payload targeting past days is rejected with a validation error prohibiting retrospective calendar modifications.

# Notes
- Requirement: UF-67 Alternative Flow A2 ("Lessor selects a past day -> Not editable").

# Attachments

# Script

---
*Last Updated: 2026-10-22 13:55*
