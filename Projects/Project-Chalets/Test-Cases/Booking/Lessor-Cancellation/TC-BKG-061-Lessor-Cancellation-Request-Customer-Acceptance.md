---
tc_id: TC-BKG-061
title: Verify Lessor Cancellation Request Flow and Customer Acceptance Cancels Booking and Releases Slot
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
| Booking Reference | `BKG-2026-000701` |
| Initial Status | `Booked` (`محجوز`) |
| Cancellation Reason | `نعتذر عن استقبالكم لوجود أعمال صيانة طارئة في المسبح والكهرباء` |
| Full Refund Amount | `2,500 SAR` |
| Warning Message | `طلب إلغاء الحجز؟ يُلغى إن وافق العميل، وعليك حينها رد المبلغ كاملًا.` |

# Preconditions
1. Booking `BKG-2026-000701` has status "Booked" (`محجوز`).
2. No open cancellation request exists on this booking.
3. No active dispute is open on this booking.
4. Lessor is logged in to the lessor management app; Customer is logged in to the customer mobile app.

# Steps
1. As the Lessor, open the booking details for `BKG-2026-000701`.
2. Tap the **"Request Cancellation"** (`طلب إلغاء الحجز`) button.
3. In the reason field, enter the cancellation explanation (`نعتذر عن استقبالكم لوجود أعمال صيانة طارئة في المسبح والكهرباء`).
4. Tap Send and verify the confirmation warning message.
5. Confirm the dialog.
6. Verify request status is **Open** and booking status remains **Booked**.
7. As the Customer, open the incoming cancellation notification displaying booking number, reason, and **[Accept]** / **[Reject]** buttons.
8. Tap **Accept** (`قبول الإلغاء`).
9. Verify updated booking status, slot availability, and notifications dispatched to both parties.

# Expected Result
1. Before customer acceptance, the request is Open and the booking remains "Booked".
2. Upon customer tapping Accept, request becomes **Accepted** and booking status transitions to **"Cancelled by Agreement"** (`ملغى بالاتفاق`).
3. The reserved slot is immediately released and becomes available for new bookings.
4. Both parties see: «على المؤجّر رد 2,500 SAR كاملًا للعميل».
5. Lessor receives notification: «قبل العميل الإلغاء — عليك رد 2,500 SAR كاملًا».
6. The refund deadline countdown (3 business days) starts automatically.

# Notes
- Requirement: UF-09 Main Flow Steps 1–9.

# Attachments

# Script

---
*Last Updated: 2026-10-18 15:00*
