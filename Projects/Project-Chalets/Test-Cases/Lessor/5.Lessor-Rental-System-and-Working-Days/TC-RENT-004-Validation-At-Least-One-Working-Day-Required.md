---
tc_id: TC-RENT-004
title: Verify System Enforces at Least One Active Working Day
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
| Working Days Selection | All 7 days unchecked (0 working days) |
| Expected Result | Form validation error; saving blocked |

# Preconditions
1. Lessor is on the Working Days configuration screen.

# Steps
1. Uncheck every day of the week (Sunday through Saturday).
2. Tap **Save** (`حفظ`).
3. Observe system response and validation indicators.

# Expected Result
1. The system blocks saving with zero working days selected.
2. An error indicator is displayed requiring at least one working day to be chosen.
3. The chalet configuration does not persist until at least one day is re-selected.

# Notes
- Requirement: UF-64 Main Flow Step 3 & Error Flow E1 ("No working day is selected -> Not allowed").

# Attachments

# Script

---
*Last Updated: 2026-10-22 13:55*
