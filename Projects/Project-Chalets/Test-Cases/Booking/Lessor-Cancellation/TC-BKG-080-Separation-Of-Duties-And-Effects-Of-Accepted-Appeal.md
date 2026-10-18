---
tc_id: TC-BKG-080
title: Verify Separation of Duties in Lessor Appeal Review and Effects of Accepted Appeal
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
| Penalty Reference | `PEN-2026-000103` (Account Suspension) |
| Imposing Support Employee | `support_officer_5` |
| Authorized Reviewer 1 | `system_manager_1` |
| Authorized Reviewer 2 | `general_manager_1` |
| Lessor Commercial Subscription | Valid and Active |

# Preconditions
1. Penalty `PEN-2026-000103` (Account Suspension) was applied by `support_officer_5`.
2. Lessor submitted a valid appeal within 3 business days.
3. Lessor's commercial listing subscription is currently valid.

# Steps
1. Log in as `support_officer_5` (the employee who imposed the penalty) and attempt to open or adjudicate the appeal for `PEN-2026-000103`.
2. Log in as `system_manager_1` or `general_manager_1`.
3. Open the appeal review console for `PEN-2026-000103`.
4. Review the lessor's explanation and bank receipt.
5. Select decision **"Accept Appeal"** (`قبول التظلم`), enter resolution notes, and confirm.
6. Verify status of the penalty in the system.
7. Verify lessor account login access.
8. Verify whether previously published ads are automatically restored.
9. Verify customer/lessor notification dispatch.

# Expected Result
1. The employee who imposed the penalty is strictly barred from reviewing or deciding the appeal (Step 1 fails with permission denied).
2. The appeal is routed exclusively to a System Manager or General Manager.
3. Upon accepting the appeal, the penalty is formally lifted and the recorded reason is saved in the audit log.
4. The lessor's account suspension is cleared; login access is immediately restored.
5. Because the lessor's subscription remains valid, previously published chalet ads are automatically restored to active public status.
6. The lessor is notified of the positive appeal decision.

# Notes
- Requirement: UF-12 Main Flow Steps 3–5, Alternative Flow A1, and Error Flow E4 ("Reviewer is the employee who imposed the penalty: Not allowed. Appeal accepted: Penalty is lifted. Lifting an account suspension restores published ads if the subscription is valid").

# Attachments

# Script

---
*Last Updated: 2026-10-18 15:00*
