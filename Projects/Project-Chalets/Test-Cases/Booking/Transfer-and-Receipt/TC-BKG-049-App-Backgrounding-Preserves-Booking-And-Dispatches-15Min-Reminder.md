---
tc_id: TC-BKG-049
title: Verify Application Closure Preserves Active Booking and Dispatches Reminder 15 Minutes Before Expiry
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Booking/Transfer-and-Receipt-Cycle.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Booking Reference | `BKG-2026-000609` |
| Default Expiry Timer | `2 Hours` |
| Reminder Window | `15 Minutes` before expiry (at `00:15:00` remaining) |

# Preconditions
1. Customer has an active temporary booking `BKG-2026-000609` with status "Temporary".
2. Test device has push notifications enabled for the application.

# Steps
1. On the test device, close/kill the mobile application while the countdown is running.
2. Advance system time or wait until the timer reaches 15 minutes before the 2-hour expiry.
3. Observe push notifications received on the test device.
4. Tap the reminder notification to launch the application.
5. Inspect booking status and remaining time on the screen.

# Expected Result
1. Closing or backgrounding the application does not cancel the booking and does not pause the timer.
2. An automated push reminder is delivered to the customer exactly 15 minutes before the temporary booking expires.
3. Tapping the notification re-opens the app directly on the active temporary booking screen.
4. The displayed timer accurately reflects real elapsed time (15 minutes remaining).

# Notes
- Requirement: UF-02 Alternative Flow A1 ("Customer closes the app: Booking stays active and the timer keeps running. Reminder 15 minutes before expiry (default)").

# Attachments

# Script

---
*Last Updated: 2026-10-18 14:35*
