---
tc_id: TC-BKG-CAN-037
title: Refund Uses Fixed Policy When Admin Edits Policy for New Bookings
priority: High
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
| Scenario | Existing booking Medium 50% at 48h |
| Scenario | admin edits rules for new bookings |

# Preconditions

-Existing booking has a saved copy of the policy.

# Steps

1. Change configured Medium policy rules in admin panel.
2. Open existing booking and calculate cancellation.
3. Create a new booking under updated policy for comparison.

# Expected Result

- Existing booking uses its saved original policy.
- Only new bookings follow new policy configuration.

# Notes


# Attachments

None.

# Script

Manual execution; use API client and server-side clock/configuration controls when specified. Automation script not supplied.

---
*Last Updated: 2026-10-21 09:00*
