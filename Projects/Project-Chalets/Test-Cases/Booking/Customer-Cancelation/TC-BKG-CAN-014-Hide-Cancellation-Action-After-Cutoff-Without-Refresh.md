---
tc_id: TC-BKG-CAN-014
title: Hide Cancellation Action After Cutoff Without Refresh
priority: Medium
status: Ready
type: Regression
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Booking/Customer-Cancellation
tags:
  - test-case
  - customer-booking-cancellation
---

# Test Data
| Field | Value |
| ----- | ----- |
| Scenario | Confirmed booking |
| Scenario | UI open before cutoff |

# Preconditions

-Customer opens confirmed booking details while cancellation is still available.

# Steps

1. Keep booking details open as server time passes the cancellation cutoff.
2. Attempt the previously visible cancellation action.
3. Refresh details.

# Expected Result

- Expired cancellation cannot be completed after cutoff.
- After refresh the action is hidden and deadline-expired message is shown.
- Server remains authoritative even if client UI is stale.

# Notes

# Attachments


# Script


---
*Last Updated: 2026-10-21 09:00*
