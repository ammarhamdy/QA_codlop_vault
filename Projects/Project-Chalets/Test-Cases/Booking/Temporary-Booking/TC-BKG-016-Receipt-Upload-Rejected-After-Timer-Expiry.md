---
tc_id: TC-BKG-016
title: Verify Receipt Upload Is Rejected When Timer Expires Before Upload Completes
priority: High
status:
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Booking/Temporary-Booking.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Temporary Booking ID | `BKG-2026-000205` |
| Receipt File | `payment_receipt.png` |
| Timer Remaining at Start of Action | `00:00:02` (2 seconds left) |
| Server Processing Time | `5 seconds` (arrives at server after timer reaches 0) |

# Preconditions
1. Customer has an active temporary booking (`BKG-2026-000205`).
2. The 2-hour countdown timer is down to the final seconds.

# Steps
1. Navigate to the receipt upload screen when timer is at `00:00:02`.
2. Initiate receipt upload such that the receipt packet arrives at the backend server after the timer reaches zero.
3. Observe backend response and application state.

# Expected Result
1. The backend validates the arrival timestamp against the booking expiration deadline.
2. Because the receipt arrived after the timer ended, the upload is rejected.
3. The booking transitions to "Expired" (`منتهي المهلة`) per UF-03.
4. The status does not become "Awaiting Lessor Confirmation".
5. The customer is notified that the temporary booking has expired.

# Notes
- Requirement: UF-02 Error Flow E2 and Functional Reference (Step 75 & Step 83: "تحقق النظام من وصول الإيصال إلى الخادم قبل انتهاء مهلة الحجز المؤقت. إذا انتهت المهلة قبل وصول الإيصال: يُرفض الإيصال").

# Attachments

# Script

---
*Last Updated: 2026-10-18 10:45*
