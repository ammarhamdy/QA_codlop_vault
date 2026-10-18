---
tc_id: TC-BKG-072
title: Verify System Proposes Next Penalty Ladder Step When Dispute Refund Deadline Expires
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
| Dispute Reference | `DSP-2026-000089` |
| Lessor Account | `LESSOR-3011` |
| Existing Penalty History | Zero prior penalties (Clean history) |
| Expected Proposed Step | `Step 1: Warning` (`تحذير`) |

# Preconditions
1. Dispute decision was issued requiring lessor `LESSOR-3011` to refund the customer within 3 business days.
2. The 3 business days have completely expired without any refund recorded.

# Steps
1. Advance time past the dispute decision deadline.
2. Inspect the automated cron evaluation for missed dispute obligations.
3. Open the Support / Penalty Operations queue for lessor `LESSOR-3011`.
4. Verify the system-generated penalty recommendation.

# Expected Result
1. As soon as the dispute deadline expires with no recorded refund, the system automatically triggers a penalty proposal.
2. The system checks the lessor's penalty history and proposes the next step on the ladder (Step 1: Warning for a clean history, or subsequent steps if previous penalties exist).
3. The proposed penalty ticket is queued in the Support dashboard for manual review and confirmation.

# Notes
- Requirement: UF-10 Error Flows E4–E5 and UF-11 Step 1 ("New deadline ends with no recorded refund: System proposes the next ladder step based on the lessor's history").

# Attachments

# Script

---
*Last Updated: 2026-10-18 15:00*
