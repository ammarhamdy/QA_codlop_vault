---
tc_id: TC-RENT-003
title: Verify Selecting Specific Working Days Automatically Closes Non-Working Days
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Rental-System-and-Working-Days.md
tags:
  - test-case
---

# Test Data
| Day of Week | Configured State | Expected Calendar Day State |
| ----------- | ---------------- | --------------------------- |
| Sunday - Wednesday | Unchecked (Non-working) | Closed: `«مغلق (يوم غير عامل)»` |
| Thursday - Saturday | Checked (Working days) | Available (`متاح`) for booking |

# Preconditions
1. Lessor is editing the Working Days settings for chalet `شاليه الرمال`.
2. No active bookings conflict with the selected schedule.

# Steps
1. In the working days selector, uncheck Sunday, Monday, Tuesday, and Wednesday.
2. Ensure Thursday, Friday, and Saturday remain checked.
3. Tap **Save**.
4. Open the lessor Calendar (UF-66) for `شاليه الرمال`.
5. Open the customer booking view for `شاليه الرمال`.

# Expected Result
1. The working days schedule is saved successfully.
2. In the calendar, Sunday through Wednesday are automatically rendered as `Closed` with label: `«مغلق (يوم غير عامل)»`.
3. In the client booking interface, non-working days are disabled and cannot be selected for check-in.
4. Thursday, Friday, and Saturday remain available for reservation.

# Notes
- Requirement: UF-64 Main Flow Step 3 & UF-66 Main Flow Step 4.

# Attachments

# Script

---
*Last Updated: 2026-10-22 13:55*
