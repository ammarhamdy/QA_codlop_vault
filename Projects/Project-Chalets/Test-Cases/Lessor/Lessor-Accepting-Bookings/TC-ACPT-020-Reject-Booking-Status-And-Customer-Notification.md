---
tc_id: TC-ACPT-020
title: Reject Booking - Status Updates to Rejected and Customer Notified with Reason
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
| Rejection Reason | `المبلغ غير مكتمل` (Amount insufficient) |
| Post-Action Status | `Rejected` (`مرفوض`) |
| Customer Notification Content | Notice of booking rejection including the exact reason `المبلغ غير مكتمل` |

# Preconditions
1. Booking is awaiting lessor confirmation.
2. Lessor selects rejection reason and confirms dialog.

# Steps
1. Complete the rejection submission for the target booking.
2. Verify the booking status in the lessor view.
3. Log in as the customer and inspect notifications (push and in-app).
4. Open the booking details on the customer side.

# Expected Result
1. The booking status transitions to **"Rejected"** (`مرفوض`).
2. The customer receives an immediate notification explaining that their booking was rejected, explicitly quoting the reason (`المبلغ غير مكتمل`).
3. In the customer's booking view, the status is marked as Rejected with the rejection reason clearly displayed.

# Notes
- Requirement: UF-06 (Main Flow Steps 4 & 6).

# Attachments

# Script

---
*Last Updated: 2026-10-26 15:35*
