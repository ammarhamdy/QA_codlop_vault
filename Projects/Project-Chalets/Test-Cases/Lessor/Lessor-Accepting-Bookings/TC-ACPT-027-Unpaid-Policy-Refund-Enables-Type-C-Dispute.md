---
tc_id: TC-ACPT-027
title: Unpaid Policy Refund Enables Customer Type C Dispute Escalation
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Accepting-Bookings.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Scenario | Customer cancelled confirmed booking; lessor failed to refund amount due |
| Escalation Action | Customer files dispute |
| Dispute Type | **Type C Dispute** (Refund obligation under policy - UF-08, UF-15, UF-16) |

# Preconditions
1. Customer cancelled a confirmed booking with an amount due under the policy.
2. Lessor fails to refund the customer offline.

# Steps
1. As the customer, navigate to the cancelled booking screen.
2. Select the option to report a dispute regarding an unpaid refund.
3. Submit the claim.

# Expected Result
1. The customer is permitted to initiate a Type C dispute against the lessor.
2. The dispute initiates formal arbitration obliging the lessor to execute the refund per policy within 3 business days, or face penalty escalation (UF-11).

# Notes
- Requirement: UF-81 (Alternative Flow A2).

# Attachments

# Script

---
*Last Updated: 2026-10-26 15:35*
