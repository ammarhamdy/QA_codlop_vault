---
tc_id: TC-BKG-CAN-046
title: Another Customer Can Book Released Slot
priority: High
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
| Scenario | Listing slot freed by cancellation |

# Preconditions

Customer A cancelled booking; customer B is eligible to book.

# Steps

1. Customer A cancels booking.
2. Wait for slot release within one minute.
3. Customer B creates temporary hold for same slot.

# Expected Result

- Customer B can reserve the freed slot if no other conflict exists.
- Customer A cancelled booking stays final.

# Notes


# Attachments

None.

# Script

Manual execution; use API client and server-side clock/configuration controls when specified. Automation script not supplied.

---
*Last Updated: 2026-10-21 09:00*
