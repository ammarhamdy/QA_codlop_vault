---
tc_id: TC-BKG-CAN-006
title: Prevent Cancellation of Already Expired Hold
priority: High
status: Ready
type: API
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Booking/Customer-Cancellation
tags:
  - test-case
  - customer-booking-cancellation
---

# Test Data
| Field | Value |
| ----- | ----- |
| Booking | hold expired and state final |

# Preconditions

-Customer owns a booking whose hold already expired.

# Steps

1. Open booking details after server-side expiration.
2. Attempt cancellation using the UI if available.
3. Call POST /bookings/{uuid}/cancel as the booking owner.

# Expected Result

- Expired hold remains a final Hold Expired state.
- No transition to Cancelled by Customer is performed.
- The released slot remains available; no duplicate release.

# Notes


# Attachments



# Script



---
*Last Updated: 2026-10-21 09:00*
