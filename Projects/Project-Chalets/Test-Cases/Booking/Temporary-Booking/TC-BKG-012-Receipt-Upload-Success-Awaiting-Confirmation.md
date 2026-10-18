---
tc_id: TC-BKG-012
title: Verify Successful Transfer Receipt Upload Stops Timer and Sets Status to Awaiting Lessor Confirmation
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Booking/Temporary-Booking.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Temporary Booking ID | `BKG-2026-000201` |
| Receipt File | `payment_receipt_bank_transfer.jpg` (valid image format, under 10MB) |
| Active Timer Remaining | `01:45:00` |
| New Booking Status | `Awaiting Lessor Confirmation` (`بانتظار تأكيد المؤجّر`) |

# Preconditions
1. Customer has an active temporary booking (`BKG-2026-000201`).
2. Booking countdown timer has not expired (e.g. 1 hour and 45 minutes remaining).
3. Customer has made the bank transfer to the lessor outside the app using the displayed bank details.
4. Valid receipt file is ready on the device storage.

# Steps
1. Open the active temporary booking screen for `BKG-2026-000201`.
2. Inspect the displayed lessor bank details and active countdown timer.
3. Tap the receipt upload button and select `payment_receipt_bank_transfer.jpg`.
4. Confirm receipt upload before timer reaches zero.
5. Check booking status and screen state.
6. Verify lessor notification dispatch.

# Expected Result
1. The receipt file is validated and successfully uploaded/stored.
2. The countdown timer is immediately stopped and hidden from the screen.
3. The booking status updates to **"Awaiting Lessor Confirmation"** (`بانتظار تأكيد المؤجّر`).
4. The booked slot remains reserved exclusively for this customer and is not released.
5. The lessor receives a notification with booking details, transfer amount, and receipt.

# Notes
- Requirement: UF-02 Main Flow (Steps 1–5) and Notes ("Awaiting Lessor Confirmation does not mean the booking is confirmed").

# Attachments

# Script

---
*Last Updated: 2026-10-18 10:45*
