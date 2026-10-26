---
tc_id: TC-ACPT-025
title: Customer Cancels Confirmed Booking - Lessor Notified with Amount Due Under Cancellation Policy
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
| Customer Name | `منيرة الصالح` |
| Booking ID | `BKG-5012` |
| Refund Due per Policy | `1,000 ر.س` (Based on policy saved on booking at creation) |
| Expected Notification Text | `ألغى منيرة الصالح الحجز BKG-5012 ويستحق 1,000 ر.س حسب سياستك` |

# Preconditions
1. A booking is in status "Booked" (Confirmed).
2. The booking possesses a saved cancellation policy snapshot.
3. The customer cancels the booking within a window that entitles them to a refund.

# Steps
1. As the customer, perform cancellation on booking `BKG-5012`.
2. Inspect the push notification, in-app notice, and SMS delivered to the lessor.
3. Verify the text matches the required format.

# Expected Result
1. The lessor is notified immediately with: `ألغى {العميل} الحجز BKG-… ويستحق {المبلغ} حسب سياستك`.
2. The dynamic booking reference and calculated refund amount are accurately injected into the notification.

# Notes
- Requirement: UF-81 (Main Flow Step 2, Alternative Flow A1).

# Attachments

# Script

---
*Last Updated: 2026-10-26 15:35*
