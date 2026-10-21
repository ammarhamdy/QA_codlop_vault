---
tc_id: TC-BKG-CAN-022
title: Confirmed Cancellation Dialog and Optional Reason
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
| Scenario | Confirmed booking |
| Scenario | policy Medium |
| Scenario | amount 1000 |
| Scenario | check-in 48h away |

# Preconditions

Customer is eligible to cancel a confirmed booking.

# Steps

1. Open Cancel Booking confirmation.
2. Inspect red warning and calculated due amount.
3. Leave optional reason blank and confirm.

# Expected Result

- Dialog states: إلغاء الحجز الآن؟ يُلغى فورًا ويُحرر الموعد. حسب السياسة المعروضة يرد لك المؤجّر {المبلغ} ر.س خارج المنصة.
- Reason is optional; blank reason does not block cancellation.
- Booking is cancelled and due amount is 500.00 SAR.

# Notes


# Attachments

None.

# Script

Manual execution; use API client and server-side clock/configuration controls when specified. Automation script not supplied.

---
*Last Updated: 2026-10-21 09:00*
