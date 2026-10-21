---
tc_id: TC-PKG-018
title: Verify Payment Request Never Auto-Approves When Review Window Passes
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
| Configured Review SLA | 24 hours |
| Elapsed Time | 25 hours (Exceeds SLA) |
| Initial Status | `Awaiting Approval` (`بانتظار الاعتماد`) |

# Preconditions
1. Payment request `PAY-2026-000110` was submitted with receipt 25 hours ago.
2. Finance has taken no action (neither approve nor reject).

# Steps
1. In database and API, query the status of payment request `PAY-2026-000110`.
2. In the lessor app, check "Payment Request Status".
3. Check whether the package subscription is active for the lessor.

# Expected Result
1. The payment request status remains strictly `Awaiting Approval` (`بانتظار الاعتماد`).
2. The system NEVER automatically approves payment requests or activates subscriptions upon review timeout.
3. Subscription remains inactive until an authorized admin explicitly takes action.

# Notes
- Requirement: UF-44 Alternative Flow A4 & Notes (Closed question: "What happens when the review time passes without a decision? Nothing. The request is never approved automatically").

# Attachments

# Script

---
*Last Updated: 2026-10-21 14:40*
