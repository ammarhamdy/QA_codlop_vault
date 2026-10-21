---
tc_id: TC-BKG-CAN-054
title: Cancellation Network Failure Does Not Duplicate Operation
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
| Scenario | Eligible confirmed booking |
| Scenario | unstable client connection |

# Preconditions

Customer is ready to confirm cancellation.

# Steps

1. Submit cancellation while simulating lost response.
2. Reconnect and refresh booking details.
3. Retry only if still offered by UI.

# Expected Result

1. Customer sees server-authoritative final booking state.
2. A completed cancellation is not duplicated.
3. No contradictory confirmed/cancelled state is displayed.

# Notes

Offline UI copy and retry design are not prescribed; verify eventual consistency and safety.

# Attachments

None.

# Script

Manual execution; use API client and server-side clock/configuration controls when specified. Automation script not supplied.

---
*Last Updated: 2026-10-21 09:00*
