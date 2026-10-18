---
tc_id: TC-BKG-021
title: Verify Lessor Successfully Confirms Booking in Awaiting Lessor Confirmation Status
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Booking/Booking-Confirmation-or-Rejection-Cycle.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Booking Reference | `BKG-2026-000501` |
| Initial Status | `Awaiting Lessor Confirmation` (`بانتظار تأكيد المؤجّر`) |
| Target Status | `Booked` (`محجوز`) |
| Transfer Amount Verified | `1,500 SAR` |

# Preconditions
1. Customer has uploaded a payment receipt for booking `BKG-2026-000501`.
2. Booking status is "Awaiting Lessor Confirmation" (`بانتظار تأكيد المؤجّر`).
3. No dispute is open on the booking.
4. Lessor is logged in to their lessor portal / app and has received the confirmation request notification.

# Steps
1. Open the incoming booking notification or navigate to the booking details screen for `BKG-2026-000501`.
2. Review the displayed booking details, customer name, date, amount, and payment receipt preview.
3. Verify the transfer amount has been deposited into the lessor's bank account (outside the platform).
4. Tap the **"Confirm"** (`تأكيد الحجز`) button.
5. Confirm the action in any confirmation dialog.

# Expected Result
1. The booking status transitions immediately to **"Booked"** (`محجوز`).
2. The slot is permanently blocked on the chalet calendar for the booked date/period.
3. Confirmation notifications (push notification, in-app notification, and SMS) are triggered to the customer.
4. The exact location coordinates and the lessor's contact phone number become visible to the customer.
5. Action buttons ("Confirm" / "Reject") are disabled or removed from the lessor view.

# Notes
- Requirement: UF-04 Main Flow (Steps 1–6).
- Postconditions: Status is "Booked", slot blocked in calendar, customer notified, location and phone revealed.

# Attachments

# Script

---
*Last Updated: 2026-10-18 12:15*
