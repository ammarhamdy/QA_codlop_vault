---
tc_id: TC-ACPT-031
title: Post-Dispute Behavior - Confirmation Window Does Not Resume or Restart
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Accepting-Bookings.md
tags:
  - test-case
---

# Test Data
| Phase | Expected Timer / Window Status |
| ----- | ------------------------------ |
| During Dispute | Timer stopped |
| Post-Dispute Resolution (Support decision issued) | Timer does NOT resume or restart; status governed strictly by support ruling |

# Preconditions
1. A booking was frozen under dispute while awaiting confirmation.
2. Support concludes the arbitration and issues an administrative decision (UF-15).

# Steps
1. Simulate or execute the issuance of Support's dispute decision.
2. Observe the resulting booking state and timer in the lessor view.

# Expected Result
1. The confirmation timer does NOT restart from the beginning (e.g., reset to 24 hours).
2. The confirmation timer does NOT resume ticking from the frozen point.
3. The booking status is directly transitioned according to the Support decision without returning to an active countdown loop.

# Notes
- Requirement: UF-83 (Notes - closed questions: "Does the confirmation window resume or restart after the dispute? No").

# Attachments

# Script

---
*Last Updated: 2026-10-26 15:35*
