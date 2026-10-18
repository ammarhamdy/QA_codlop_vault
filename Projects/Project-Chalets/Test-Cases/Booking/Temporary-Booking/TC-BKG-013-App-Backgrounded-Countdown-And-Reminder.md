---
tc_id: TC-BKG-013
title: Verify Timer Continues When App Closes and Sends Reminder 15 Minutes Before Expiry
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Booking/Temporary-Booking.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Temporary Booking ID | `BKG-2026-000202` |
| Initial Timer | `2 Hours` (`02:00:00`) |
| Backgrounding Time | `1 Hour 30 Minutes` |
| Reminder Trigger Time | `15 Minutes` prior to expiry (at `00:15:00` remaining) |

# Preconditions
1. Customer creates a temporary booking (`BKG-2026-000202`) with a running 2-hour countdown timer.
2. Push notifications are enabled for the mobile application on the test device.

# Steps
1. Immediately after booking creation, press Home or swipe to close/kill the mobile application.
2. Allow time to elapse or simulate passage of time on backend until 15 minutes before the 2-hour timer expires.
3. Observe push notifications received on the device.
4. Re-open the mobile application and navigate back to the temporary booking screen.

# Expected Result
1. Closing or backgrounding the application does not cancel the booking and does not halt the timer.
2. A reminder push notification is dispatched and received by the customer exactly 15 minutes before expiry.
3. Upon reopening the application, the countdown timer accurately reflects the elapsed real time (approx. 15 minutes remaining).
4. Booking status remains "Temporary" (`محجوز مؤقتًا`).

# Notes
- Requirement: UF-02 Alternative Flow A1.
- Default reminder is scheduled 15 minutes prior to temporary booking expiry.

# Attachments

# Script

---
*Last Updated: 2026-10-18 10:45*
