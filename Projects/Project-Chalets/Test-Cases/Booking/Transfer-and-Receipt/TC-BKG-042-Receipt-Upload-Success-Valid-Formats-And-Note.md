---
tc_id: TC-BKG-042
title: Verify Successful Transfer Receipt Upload with Allowed Formats and Optional Note
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Booking/Transfer-and-Receipt-Cycle.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Booking Reference | `BKG-2026-000602` |
| Receipt Files | `receipt.jpg`, `receipt.png`, `receipt.pdf` (all < 10 MB) |
| Transfer Date | `2026-10-18` |
| Optional Note | `تم التحويل من حساب بنك الإنماء باسم محمد` |

# Preconditions
1. Customer has an active temporary booking `BKG-2026-000602`.
2. The countdown timer has not expired.
3. Test device storage contains valid files in JPG, PNG, and PDF formats.

# Steps
1. Navigate to the upload receipt section on `BKG-2026-000602`.
2. Select a valid receipt file (test with `receipt.jpg`, `receipt.png`, or `receipt.pdf`).
3. Select the transfer date (`2026-10-18`) from the date picker.
4. Enter the optional note: `تم التحويل من حساب بنك الإنماء باسم محمد`.
5. Tap **"Send Receipt"** (`إرسال الإيصال`) and confirm submission before the timer ends.

# Expected Result
1. The system validates and accepts each permitted format (`JPG`, `PNG`, `PDF`).
2. The receipt file, transfer date, and optional note are uploaded and attached to the booking record.
3. The booking status transitions to **"Awaiting Lessor Confirmation"** (`بانتظار تأكيد المؤجّر`).
4. The countdown timer is stopped and hidden from the screen.
5. The chalet slot remains reserved exclusively for the customer and blocked for others.
6. The lessor is notified within 60 seconds with customer name, place, date, and transfer amount.

# Notes
- Requirement: UF-02 Main Flow Steps 5–10.

# Attachments

# Script

---
*Last Updated: 2026-10-18 14:35*
