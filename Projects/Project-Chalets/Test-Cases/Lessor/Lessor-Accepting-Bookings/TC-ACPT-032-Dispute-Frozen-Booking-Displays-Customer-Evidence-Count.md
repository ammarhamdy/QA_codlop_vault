---
tc_id: TC-ACPT-032
title: Dispute-Frozen Booking Displays Customer Evidence Count to Lessor
priority: Low
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Accepting-Bookings.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Customer Uploaded Evidence Files | `3` files (e.g., bank statement, transaction receipt, chat screenshots) |
| Lessor Visibility Scope | Evidence count only (`3 مرفقات / مستندات`) — full files hidden |

# Preconditions
1. A customer has opened a dispute and uploaded 3 evidence attachments.
2. Lessor is logged in and views the frozen booking details.

# Steps
1. Navigate to the frozen booking screen.
2. Locate the dispute details section.
3. Verify what information regarding customer evidence is rendered.

# Expected Result
1. The screen displays the count of evidence documents provided by the customer (e.g., `3 مستندات مرفقة`).
2. The lessor cannot browse, view, or download the customer's private evidence files directly from this view (count only).

# Notes
- Requirement: UF-83 (Notes - closed questions: "Does the lessor see the customer's evidence count in this screen? Yes").

# Attachments

# Script

---
*Last Updated: 2026-10-26 15:35*
