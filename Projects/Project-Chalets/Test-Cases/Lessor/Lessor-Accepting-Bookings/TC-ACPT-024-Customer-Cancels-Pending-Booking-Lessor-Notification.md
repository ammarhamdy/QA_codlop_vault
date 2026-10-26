---
tc_id: TC-ACPT-024
title: Customer Cancels Pending Booking - Lessor Notified Without Refund Obligation
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Accepting-Bookings.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Customer Name | `فيصل العتيبي` |
| Place / Chalet Name | `شاليه النخيل` |
| Booking Date | `2026-11-25` |
| Expected Notification Text | `ألغى فيصل العتيبي حجزه في شاليه النخيل 2026-11-25` |

# Preconditions
1. Booking status is "Awaiting Lessor Confirmation" (Pending).
2. Customer initiates cancellation on this pending booking.

# Steps
1. As the customer, cancel the pending booking.
2. Inspect the notification delivered to the lessor.
3. Open the cancelled booking as the lessor.

# Expected Result
1. The lessor receives an alert stating: `ألغى فيصل العتيبي حجزه في شاليه النخيل 2026-11-25`.
2. Because the booking was pending and never confirmed, no refund obligation banner is presented.
3. The booking moves to the "Cancelled" list under "My Places' Bookings".

# Notes
- Requirement: UF-81 (Main Flow Step 1; Notes - open questions).

# Attachments

# Script

---
*Last Updated: 2026-10-26 15:35*
