---
tc_id: TC-BKG-062
title: Verify Customer Rejection Leaves Booking Confirmed and Binding on Lessor
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Booking/Lessor-Cancellation-Cycle.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Booking Reference | `BKG-2026-000702` |
| Initial Status | `Booked` (`محجوز`) |
| Cancellation Request Status | `Open` |

# Preconditions
1. Booking `BKG-2026-000702` is in "Booked" status.
2. Lessor submitted a cancellation request which is currently Open.
3. Customer receives the cancellation prompt with [Accept] and [Reject] options.

# Steps
1. As the Customer, open booking `BKG-2026-000702` or the cancellation request notification.
2. Tap the **Reject** (`رفض طلب الإلغاء`) button.
3. Confirm the rejection action.
4. Check the cancellation request status.
5. Check the booking status on both customer and lessor accounts.
6. Verify whether the chalet slot remains reserved for this booking.

# Expected Result
1. The cancellation request status transitions to **Rejected**.
2. The booking status remains strictly **"Booked"** (`محجوز`).
3. The booking remains fully active and legally binding on the lessor.
4. The reserved slot is **not** released.
5. The lessor is notified that the customer rejected the cancellation request.

# Notes
- Requirement: UF-09 Alternative Flow A1 ("Customer taps Reject: Request becomes Rejected. The booking stays 'Booked' and binding on the lessor").

# Attachments

# Script

---
*Last Updated: 2026-10-18 15:00*
