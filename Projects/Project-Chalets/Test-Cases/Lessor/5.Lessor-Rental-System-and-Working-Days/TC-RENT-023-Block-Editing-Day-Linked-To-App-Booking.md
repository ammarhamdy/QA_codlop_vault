---
tc_id: TC-RENT-023
title: Verify System Blocks Manual Editing of Calendar Day Linked to Active App Booking
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
| Selected Date | `2026-11-22` |
| Linked App Booking | `BK-7720` (Confirmed / Paid) |
| Expected System Message | `«هذا اليوم مرتبط بحجز. أدِره من الحجوزات»` |

# Preconditions
1. Date `2026-11-22` is reserved via an active application booking `BK-7720`.
2. Lessor opens the calendar.

# Steps
1. Tap on date `2026-11-22`.
2. Tap **"Edit Selected"** (`تعديل المحدد`) or attempt to save status/price changes.
3. Observe the system response and screen feedback.

# Expected Result
1. The system detects that the selected date is contracted under an active app booking.
2. Manual changes from the calendar are strictly blocked.
3. The exact Arabic warning message is presented:
   `«هذا اليوم مرتبط بحجز. أدِره من الحجوزات»`.
4. The lessor is directed to the Bookings section to manage, confirm, or cancel the reservation.

# Notes
- Requirement: UF-67 Error Flow E2.

# Attachments

# Script

---
*Last Updated: 2026-10-22 13:55*
