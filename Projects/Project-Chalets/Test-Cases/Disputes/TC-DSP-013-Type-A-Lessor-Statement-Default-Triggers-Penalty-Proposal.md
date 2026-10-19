---
tc_id: TC-DSP-013
title: Verify System Proposes Decision for Customer and Penalty Step When Lessor Misses 48h Statement SLA
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
| Dispute Reference | `DSP-2026-000108` (Type A) |
| Lessor ID | `LESSOR-4001` |
| Statement SLA | `48 Hours` |
| Expected Staff Indicator | `لم يرفع المؤجّر الكشف` |

# Preconditions
1. Type A dispute `DSP-2026-000108` has been in status "Awaiting Statement" for 48 hours.
2. Lessor has failed to upload any bank statement within the 48-hour window.

# Steps
1. Advance system time past the 48-hour deadline.
2. In Support Console, open dispute ticket `DSP-2026-000108`.
3. Verify staff indicator banner on the dispute ticket.
4. Verify system automated proposal for dispute resolution.
5. Verify system automated proposal for the lessor penalty step.
6. As Support, review and apply both the customer decision and the penalty proposal.

# Expected Result
1. Upon 48 hours elapsing without a statement upload, staff sees the explicit indicator: `«لم يرفع المؤجّر الكشف»`.
2. The system automatically creates a presumption in favor of the customer and proposes a decision ordering full refund.
3. The system automatically proposes the next penalty ladder step for the lessor based on their violation history.
4. Support applies the decision and the penalty step with recorded reason and reference, transitioning the penalty to UF-11.

# Notes
- Requirement: UF-15 Alternative Flow A9 ("Lessor does not upload the statement within 48 hours: Staff sees «لم يرفع المؤجّر الكشف». System proposes a decision for the customer and the next penalty step. Support reviews and applies both. Continues to UF-11").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:00*
