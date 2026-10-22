---
tc_id: TC-RENT-005
title: Verify System Blocks Immediate Times Change When Conflicting App Bookings Exist
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Rental-System-and-Working-Days.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Chalet Name | `شاليه الفخامة` |
| Active Confirmed App Booking | `BK-8801` (Check-in: `2026-11-05`, Check-out: `2026-11-06`) |
| Last Existing Booking Date | `2026-11-06` |
| Expected Warning Message | `«لا يمكن تغيير الأوقات لوجود حجوزات قائمة. يسري التغيير بعد 2026-11-06»` |

# Preconditions
1. Chalet `شاليه الفخامة` has confirmed app booking `BK-8801` with checkout scheduled on `2026-11-06`.
2. Lessor opens times settings and modifies check-in or check-out times.

# Steps
1. Change check-in time from 4:00 PM to 2:00 PM.
2. Tap **Save Changes** (`حفظ التعديلات`).
3. Observe the system response.

# Expected Result
1. The system blocks immediate changes that disrupt existing contracted bookings.
2. The user is presented with the explicit message:
   `«لا يمكن تغيير الأوقات لوجود حجوزات قائمة. يسري التغيير بعد 2026-11-06»`
3. The existing booking `BK-8801` preserves its original check-in and check-out schedule without disruption.

# Notes
- Requirement: UF-64 Error Flow E2.

# Attachments

# Script

---
*Last Updated: 2026-10-22 13:55*
