---
tc_id: TC-BKG-064
title: Verify Lessor Can Withdraw Open Cancellation Request Leaving Booking Confirmed
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Booking/Lessor-Cancellation-Cycle.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Booking Reference | `BKG-2026-000704` |
| Initial Request Status | `Open` |
| Target Request Status | `Withdrawn` (`مسحوب`) |

# Preconditions
1. Booking `BKG-2026-000704` has status "Booked".
2. Lessor previously submitted a cancellation request which is currently Open (customer has not yet answered).

# Steps
1. As the Lessor, open booking `BKG-2026-000704`.
2. Locate the active cancellation request card.
3. Tap **"Withdraw Request"** (`سحب طلب الإلغاء`).
4. Confirm the withdrawal prompt.
5. In the customer application, view the booking details and open the previous cancellation notification.

# Expected Result
1. The cancellation request status changes from Open to **Withdrawn**.
2. The booking status remains **"Booked"** (`محجوز`).
3. In the customer UI, the [Accept] and [Reject] action buttons are disabled or removed, indicating that the lessor has withdrawn the cancellation request.
4. The customer is notified that the cancellation request has been withdrawn.
5. The slot remains booked and active.

# Notes
- Requirement: UF-09 Alternative Flow A3 ("Lessor withdraws the request while it is Open: Request becomes Withdrawn. The booking stays 'Booked'").

# Attachments

# Script

---
*Last Updated: 2026-10-18 15:00*
