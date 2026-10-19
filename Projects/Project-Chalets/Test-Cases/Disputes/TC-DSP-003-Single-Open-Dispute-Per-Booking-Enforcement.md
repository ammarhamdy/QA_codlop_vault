---
tc_id: TC-DSP-003
title: Verify System Blocks Creation of Multiple Concurrent Disputes on the Same Booking
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Disputes/Disputes.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Booking Reference | `BKG-2026-000803` |
| Existing Active Dispute | `DSP-2026-000101` (Status: Open) |
| Second Dispute Attempt | Customer attempts to open another dispute for `BKG-2026-000803` |
| Expected Error Message | `يوجد نزاع مفتوح على هذا الحجز` |

# Preconditions
1. Booking `BKG-2026-000803` already has an active dispute (`DSP-2026-000101`) with status **Open** or **Under Review**.
2. Customer is authenticated and navigates to the booking details screen.

# Steps
1. In the customer application, view booking `BKG-2026-000803`.
2. Verify UI state: whether "Open Dispute" or "View Active Dispute" is displayed.
3. If an input form can be accessed, attempt to submit a second dispute.
4. Attempt to invoke the create dispute API directly: `POST /api/disputes` with booking ID `BKG-2026-000803`.

# Expected Result
1. The UI reflects the existing active dispute and prevents opening a second dispute form.
2. Direct API submission is rejected with an error displaying the exact message: `«يوجد نزاع مفتوح على هذا الحجز»`.
3. The system redirects the user to the existing dispute (`DSP-2026-000101`) view instead.
4. No duplicate dispute record is created.

# Notes
- Requirement: UF-08 Error Flow E2 ("A dispute is already open on the booking: Rejected with «يوجد نزاع مفتوح على هذا الحجز». The existing dispute opens instead").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:00*
