---
tc_id: TC-DSP-020
title: Verify Dispute Decision Appeal Enforces 3-Day Window, Single Appeal, and Reviewer Separation
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
| Dispute Reference | `DSP-2026-000116` |
| Initial Decision Maker | `support_agent_03` (issued initial decision) |
| Reviewer Role Allowed | `system_manager` or `general_manager` |
| Appeal Reason (Valid) | `نطلب إعادة النظر حيث تم تسليم الشاليه متأخرًا ومرفق محادثات الواتساب` |
| Error Message on Second Appeal | `استخدمت حقك في الاستئناف لهذا النزاع` |
| Error Message on Late Appeal | `انتهت مهلة الاستئناف` |

# Preconditions
1. Dispute `DSP-2026-000116` has a decision issued by support agent `support_agent_03`.
2. Decision notice was delivered to customer and lessor within the past 24 hours.

# Steps
1. As the appealing party, attempt to submit an appeal with reason shorter than 10 characters (`أعترض`).
2. Enter valid reason (10 to 1000 characters) and submit appeal within 3 business days.
3. Observe dispute status change to **Appealed** (`قيد الاستئناف`).
4. Attempt to submit a second appeal on the same dispute from the same party.
5. On another test dispute where decision notice was delivered > 3 business days ago, attempt to submit an appeal.
6. In Admin / Support panel, attempt to assign `support_agent_03` (the original decider) as the appeal reviewer.
7. Assign an independent System Manager or General Manager to review and record the final decision.

# Expected Result
1. Appeal reason < 10 characters is blocked.
2. Valid appeal within 3 business days is accepted, setting status to **Appealed**.
3. Attempting a second appeal on the same dispute is rejected with exact Arabic error: `«استخدمت حقك في الاستئناف لهذا النزاع»`.
4. Attempting an appeal after 3 business days is rejected with exact error: `«انتهت مهلة الاستئناف»`.
5. The system strictly blocks the employee who issued the initial decision (`support_agent_03`) from reviewing or deciding the appeal.
6. The appeal is routed exclusively to a System Manager or General Manager, and their decision is recorded as final.

# Notes
- Requirement: UF-17 Main Flow Steps 1–6 and Error Flows E1, E2, E3, E4.

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:00*
