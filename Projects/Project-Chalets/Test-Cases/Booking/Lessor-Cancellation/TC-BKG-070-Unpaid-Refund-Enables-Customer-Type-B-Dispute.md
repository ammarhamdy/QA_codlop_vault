---
tc_id: TC-BKG-070
title: Verify Customer Can Open Type B Dispute When 3-Business-Day Refund Deadline Expires Unpaid
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
| Booking Reference | `BKG-2026-000710` |
| Initial Status | `Cancelled by Agreement` (`ملغى بالاتفاق`) |
| Dispute Type | `Type (B)` (Non-refund after agreed cancellation) |
| Action Button | **"Open Dispute"** (`فتح نزاع عدم استرداد المبلغ`) |

# Preconditions
1. Booking `BKG-2026-000710` was cancelled by agreement.
2. The 3-business-day refund deadline elapsed with no completed refund recorded.
3. Customer is logged in and navigates to the booking details screen.

# Steps
1. Open booking `BKG-2026-000710` prior to deadline expiry; verify whether dispute creation is enabled or delayed.
2. Advance system time past the 3-business-day refund deadline without recorded refund.
3. Refresh the customer booking view.
4. Verify the appearance of the dispute trigger button.
5. Tap **"Open Dispute"** and submit the claim for non-receipt of refund.

# Expected Result
1. While the 3-business-day refund window is still running, the customer is informed to wait for lessor payment.
2. As soon as the 3-business-day deadline ends without a full refund, the system enables the customer to open a **Type (B)** dispute.
3. Tapping the dispute button registers a Type (B) dispute, assigning it to support review.
4. The booking status reflects an active dispute in progress.

# Notes
- Requirement: UF-10 Error Flow E1 ("Deadline ends (3 business days) without a full refund: Customer can open a type (B) dispute").

# Attachments

# Script

---
*Last Updated: 2026-10-18 15:00*
