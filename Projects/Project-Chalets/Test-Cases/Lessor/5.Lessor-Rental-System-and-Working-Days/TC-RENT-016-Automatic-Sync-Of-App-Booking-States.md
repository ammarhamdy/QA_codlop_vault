---
tc_id: TC-RENT-016
title: Verify Calendar Automatically Synchronizes App Booking Lifecycle States
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Rental-System-and-Working-Days.md
tags:
  - test-case
---

# Test Data
| App Booking Event | Triggering Action | Expected Calendar Cell State |
| ----------------- | ----------------- | ---------------------------- |
| Event 1 | Client holds temporary booking | `Temporary Booked` (`حجز مؤقت`) |
| Event 2 | Client completes payment | `Awaiting Confirmation` / `Booked` |
| Event 3 | Booking rejected or times out | Reverts automatically to `Available` (`متاح`) |

# Preconditions
1. Chalet date `2026-11-20` is initially Available.
2. Lessor is viewing the calendar.

# Steps
1. In client app, initiate a booking for `2026-11-20` (Event 1).
2. Refresh or observe live updates on the lessor's calendar.
3. Complete booking confirmation (Event 2).
4. Observe calendar status on `2026-11-20`.
5. Cancel/reject the booking (Event 3).
6. Observe calendar status update.

# Expected Result
1. The calendar updates automatically in real-time corresponding to app booking lifecycle states.
2. When temporarily held, the date transitions to `Temporary Booked`.
3. When confirmed, the date transitions to `Booked`.
4. When cancelled/timed out, the date reverts automatically to `Available`.
5. Lessor cannot manually override app booking states from the calendar view.

# Notes
- Requirement: UF-66 Main Flow Step 5 & Alternative Flow A2.

# Attachments

# Script

---
*Last Updated: 2026-10-22 13:55*
