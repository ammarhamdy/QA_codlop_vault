---
tc_id: TC-PKG-020
title: Verify Gateway Payment Failure Handling and Retry Without Pending Lock
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Package-and-Payment-Method/Package-and-Payment-Method.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Gateway Error Type | Insufficient funds / Declined transaction |
| Failure Status | `Payment Failed` (`فشل الدفع`) |
| Failure Reason | Card declined by issuer |

# Preconditions
1. Payment gateway is active.
2. Lessor attempts payment for an active package.

# Steps
1. On the payment checkout screen, submit a card that simulates a payment decline/failure.
2. Observe screen response and displayed failure reason.
3. Verify payment request status.
4. Tap **"Retry Payment"** (`إعادة المحاولة`).
5. Verify whether the request returns to `Awaiting Payment` to retry gateway or switch to Bank Transfer.
6. Verify whether this failed payment locks the user from selecting a package (i.e. check if it counts as a pending block).

# Expected Result
1. The system updates the request status to `Payment Failed` and displays the specific failure reason.
2. The user is offered options to retry payment or switch to Bank Transfer.
3. Tapping retry returns the request to `Awaiting Payment`.
4. A failed payment does NOT count as a pending request and does NOT block the user from starting a new package selection.

# Notes
- Requirement: UF-45 Alternative Flow A1 & Notes (Closed question: "Does a failed payment count as a pending request? NO").

# Attachments

# Script

---
*Last Updated: 2026-10-21 14:40*
