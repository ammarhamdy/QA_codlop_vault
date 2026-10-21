---
tc_id: TC-BKG-CAN-003
title: Show Correct Pre-Confirmation Cancellation Dialog
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
| Booking | held or awaiting_confirmation |

# Preconditions

-Customer owns an eligible unconfirmed booking.

# Steps

1. Open booking details.
2. Tap Cancel Booking.
3. Inspect the red confirmation dialog without confirming.

# Expected Result

- Dialog is styled as a red/destructive confirmation.
- Dialog contains: إلغاء الحجز؟ سيُحرر الموعد لغيرك. إن كنت حوّلت مبلغًا فاسترداده يتم مباشرة مع المؤجّر
- Booking remains unchanged until the customer confirms.

# Notes


# Attachments



# Script

---
*Last Updated: 2026-10-21 09:00*
