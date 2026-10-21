---
tc_id: TC-BKG-CAN-067
title: Cancellation Policy Visible Before and After Booking
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Booking/Customer-Cancellation
tags:
  - test-case
  - customer-booking-cancellation
---

# Test Data
| Field | Value |
| ----- | ----- |
| Scenario | Listing policy Medium |
| Scenario | fixed booking copy |

# Preconditions

Customer can view listing and owns booking.

# Steps

1. Inspect cancellation policy during booking creation.
2. Create temporary hold.
3. Open booking details and read saved policy.
4. Change listing policy and reopen booking details.

# Expected Result

1. Cancellation policy is visible before booking.
2. Booking details show fixed policy snapshot.
3. Later listing changes do not rewrite the existing booking policy.

# Notes

PRD-backed; verify using server-side booking state and the UI. Do not assume unspecified HTTP status codes.

# Attachments

None.

# Script

Manual execution; use API client and server-side clock/configuration controls when specified. Automation script not supplied.

---
*Last Updated: 2026-10-21 09:00*
