---
tc_id: TC-BKG-CAN-066
title: Existing Customer Cancellation and Account Deletion Blocker
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
| Scenario | Customer with an active booking and no other blockers |

# Preconditions

Customer owns a live booking and can access account deletion.

# Steps

1. Open account deletion before cancelling booking.
2. Observe active booking blocker.
3. Cancel booking within permitted window.
4. Retry deletion eligibility check.

# Expected Result

1. Active booking blocks account deletion.
2. Once cancellation is complete, that booking no longer blocks deletion.
3. Other independent blockers, if any, still apply.

# Notes

PRD-backed; verify using server-side booking state and the UI. Do not assume unspecified HTTP status codes.

# Attachments

None.

# Script

Manual execution; use API client and server-side clock/configuration controls when specified. Automation script not supplied.

---
*Last Updated: 2026-10-21 09:00*
