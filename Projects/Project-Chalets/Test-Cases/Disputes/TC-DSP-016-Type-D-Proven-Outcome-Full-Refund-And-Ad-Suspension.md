---
tc_id: TC-DSP-016
title: Verify Type D Proven Outcome Triggers Full Refund, Ad Suspension, and Automatic Re-Inspection Request
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
| Dispute Reference | `DSP-2026-000111` |
| Dispute Type | `Type D` (المكان غير مطابق أو غير متاح، أو أخرى) |
| Chalet ID | `CHALET-8820` |
| Evidence Evaluated | Photos and videos proving place condition was grossly misrepresented |
| Refund SLA | Full refund within `3 Business Days` |
| Administrative Actions | 1. Ad suspended administratively<br>2. Automatic re-inspection request created citing `DSP-2026-000111` |

# Preconditions
1. Customer opened Type D dispute `DSP-2026-000111` attaching photo/video evidence.
2. Support reviews evidence and determines the violation is proven.

# Steps
1. In Support Console, select outcome: "Type D Proven" for `DSP-2026-000111`.
2. Enter the justification reason and confirm decision.
3. Check status of chalet listing `CHALET-8820` on the platform.
4. Check the Field Operations / Inspection module queue.
5. Check notifications sent to both customer and lessor.

# Expected Result
1. The decision orders a full refund to the customer within 3 business days.
2. The chalet ad (`CHALET-8820`) is suspended administratively and hidden from search results immediately.
3. A re-inspection task is automatically scheduled in the inspection queue, referencing the dispute ID (`DSP-2026-000111`).
4. Both parties are notified with the formal decision and reason.

# Notes
- Requirement: UF-15 Alternative Flow A7 ("Type D proven: Full refund in 3 business days, ad suspended administratively, re-inspection requested automatically citing 'DSP-…', both parties notified with the reason").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:00*
