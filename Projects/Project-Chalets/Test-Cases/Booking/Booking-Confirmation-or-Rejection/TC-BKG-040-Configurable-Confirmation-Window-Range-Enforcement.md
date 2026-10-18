---
tc_id: TC-BKG-040
title: Verify Configurable Confirmation Window Range Enforced Between 1 and 72 Hours
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Booking/Booking-Confirmation-or-Rejection-Cycle.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Config Key | `booking_confirmation_window_hours` |
| Default Value | `24` |
| Min Boundary Test | `1` Hour (Reminder at `30` Minutes) |
| Max Boundary Test | `72` Hours (Reminder at `36` Hours) |
| Below Min Invalid | `0` Hours |
| Above Max Invalid | `73` Hours |
| Mid-range Valid | `48` Hours (Reminder at `24` Hours) |

# Preconditions
1. Platform administrator is logged into the Admin Management Panel.
2. Booking settings configuration section is accessible.

# Steps
1. Navigate to Booking System Settings in the Admin Panel.
2. Attempt to set confirmation window to `0` hours and save.
3. Attempt to set confirmation window to `73` hours and save.
4. Set confirmation window to lower bound `1` hour and save.
5. Set confirmation window to upper bound `72` hours and save.
6. Set confirmation window to `48` hours and save.
7. Trigger a new booking receipt upload under the 48-hour configuration and inspect the calculated reminder trigger time and support alert threshold.

# Expected Result
1. Values below 1 hour (`0`) and above 72 hours (`73`) are rejected with validation error: allowed range is 1 to 72 hours.
2. Boundary values `1` hour and `72` hours are accepted and saved successfully.
3. When set to `48` hours, newly created pending bookings adopt the 48-hour window, automatically scheduling the lessor reminder at exactly 50% of the window (24 hours) and the support alert at 48 hours.

# Notes
- Requirement: UF-07 Alternative Flow A3 ("Admin changed the window (allowed range: 1 to 72 hours): Window and reminder timing follow the new value").

# Attachments

# Script

---
*Last Updated: 2026-10-18 12:15*
