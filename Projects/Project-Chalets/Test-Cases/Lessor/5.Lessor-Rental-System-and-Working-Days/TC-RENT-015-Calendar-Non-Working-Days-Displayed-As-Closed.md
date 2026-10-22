---
tc_id: TC-RENT-015
title: Verify Non-Working Days Are Automatically Marked as Closed on Calendar
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Rental-System-and-Working-Days.md
tags:
  - test-case
---

# Test Data
| Configured Working Schedule | Test Calendar Day | Expected Day Status Tag |
| --------------------------- | ----------------- | ----------------------- |
| Sunday through Wednesday = OFF | Tuesday `2026-11-03` | `«مغلق (يوم غير عامل)»` |
| Thursday through Saturday = ON | Friday `2026-11-06` | `Available` (`متاح`) |

# Preconditions
1. In chalet settings (UF-64), lessor configured Sunday through Wednesday as non-working days.
2. Lessor opens the chalet calendar view.

# Steps
1. Navigate to Tuesday `2026-11-03` on the calendar.
2. Inspect the status label and visual styling of the date cell.
3. Compare with Friday `2026-11-06`.

# Expected Result
1. Every non-working weekday (Sunday, Monday, Tuesday, Wednesday) automatically reflects status **Closed** with the label `«مغلق (يوم غير عامل)»`.
2. Working days (Thursday, Friday, Saturday) display as Available (or Booked if reserved).

# Notes
- Requirement: UF-66 Main Flow Step 4.

# Attachments

# Script

---
*Last Updated: 2026-10-22 13:55*
