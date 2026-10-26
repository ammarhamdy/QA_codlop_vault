---
tc_id: TC-ACPT-029
title: Dispute Freeze - Confirm, Reject, and Cancel Actions Strictly Blocked
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Accepting-Bookings.md
tags:
  - test-case
---

# Test Data
| Target Action | Expected System Behavior During Dispute Freeze |
| ------------- | ---------------------------------------------- |
| Confirm Amount Received | Disabled / Hidden / Action Blocked |
| Reject Booking | Disabled / Hidden / Action Blocked |
| Request Cancellation (Lessor) | Disabled / Blocked |
| Cancel Booking (Customer) | Disabled / Blocked (UF-81 E1) |

# Preconditions
1. Booking has an active, unresolved dispute open.
2. Lessor opens the booking details.

# Steps
1. Attempt to tap "Confirm Amount Received" or check button availability.
2. Attempt to tap "Reject Booking" or check button availability.
3. Attempt to invoke cancellation requests as either lessor or customer.
4. Attempt to trigger confirmation/rejection via direct API requests.

# Expected Result
1. All status change controls (Confirm, Reject, Cancel) are disabled or completely hidden in the UI.
2. Any direct API invocation attempting to mutate the status of a frozen booking is rejected with an error indicating the booking is frozen under dispute.

# Notes
- Requirement: UF-04 (Error Flow E1), UF-06 (Error Flow E3), UF-81 (Error Flow E1), UF-83 (Main Flow Step 2).

# Attachments

# Script

---
*Last Updated: 2026-10-26 15:35*
