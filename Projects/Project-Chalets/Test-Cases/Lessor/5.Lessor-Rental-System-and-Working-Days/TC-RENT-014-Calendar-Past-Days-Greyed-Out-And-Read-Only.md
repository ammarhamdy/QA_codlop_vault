---
tc_id: TC-RENT-014
title: Verify Past Calendar Days Are Rendered Greyed Out and Read-Only
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Rental-System-and-Working-Days.md
tags:
  - test-case
---

# Test Data
| Date Condition | Calendar Date | Visual Styling | Edit Capability |
| -------------- | ------------- | -------------- | --------------- |
| Yesterday | `2026-10-21` | Greyed-out background | Disabled / Read-Only |
| 1 Week Ago | `2026-10-15` | Greyed-out background | Disabled / Read-Only |
| Today | Current Date | Active styling | Editable |

# Preconditions
1. Lessor is viewing the monthly calendar view.

# Steps
1. Navigate back to previous dates or view past days of the current month.
2. Observe the visual presentation of days prior to today.
3. Tap on a past date.
4. Attempt to trigger the "Edit Selected" action on a past date.

# Expected Result
1. Past days are clearly styled in grey, signaling an inactive historical state.
2. Tapping or selecting past days does not trigger selection handles or open the edit modal.
3. Past calendar data is strictly read-only.

# Notes
- Requirement: UF-66 Main Flow Step 3 & UF-67 Alternative Flow A2.

# Attachments

# Script

---
*Last Updated: 2026-10-22 13:55*
