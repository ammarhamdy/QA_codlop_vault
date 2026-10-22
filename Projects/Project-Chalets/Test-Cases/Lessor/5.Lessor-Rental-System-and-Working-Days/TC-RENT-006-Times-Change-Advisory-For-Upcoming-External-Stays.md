---
tc_id: TC-RENT-006
title: Verify System Displays Advisory When Upcoming External Stays Exist During Times Change
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
| Upcoming External Stays Count | `3` recorded upcoming offline stays |
| Expected Advisory Message Pattern | `«لديك 3 إقامات مسجلة قادمة بالأوقات القديمة. أبلغ عملاءك بالتغيير»` |

# Preconditions
1. Chalet has 3 recorded upcoming external stays with old check-in and check-out times.
2. No conflicting platform app bookings exist.

# Steps
1. In lessor times settings, update the check-in time.
2. Tap **Save Changes**.
3. Observe the confirmation modal and warning notifications displayed.

# Expected Result
1. The new times are saved and applied to the chalet.
2. The system flags that 3 external stays were recorded with the old schedule and presents the warning notice:
   `«لديك 3 إقامات مسجلة قادمة بالأوقات القديمة. أبلغ عملاءك بالتغيير»`.
3. The lessor is advised to notify off-platform clients of the updated schedule.

# Notes
- Requirement: UF-64 Error Flow E3.

# Attachments

# Script

---
*Last Updated: 2026-10-22 13:55*
