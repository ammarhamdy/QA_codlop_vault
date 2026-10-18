---
tc_id: TC-BKG-055
title: Verify Admin Applies Customer Penalty for Proven Forged Receipt with Mandatory Reason
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Booking/Transfer-and-Receipt-Cycle.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Offending Customer Account | `CUST-9012` |
| Offense Type | Proven Receipt Forgery (`ثبوت تزوير إيصال`) |
| Mandatory Penalty Reason | `تم التحقق من البنك وثبوت تزوير إيصال التحويل المرفوع للحجز BKG-2026-000612` |
| Initial Penalty Level | Warning (`تحذير`) from first proven case |

# Preconditions
1. Admin user is logged in to the Admin Operations Console with penalty management permissions.
2. Evidence of receipt forgery has been verified for customer `CUST-9012`.
3. Customer currently has zero prior infractions.

# Steps
1. In Admin Console, navigate to Customer Profile for `CUST-9012` -> Actions -> Impose Penalty.
2. Attempt to submit the penalty action without providing a justification reason.
3. Enter mandatory reason: `تم التحقق من البنك وثبوت تزوير إيصال التحويل المرفوع للحجز BKG-2026-000612`.
4. Submit penalty.
5. Inspect the resulting customer penalty record and notification dispatched to the customer.

# Expected Result
1. Applying a penalty without a reason is blocked; the reason is strictly mandatory.
2. When the reason is provided, the penalty is applied immediately from the very first proven case of receipt forgery.
3. System records the penalty with timestamp, imposing admin ID, and reason.
4. An automated notification is sent to the customer informing them of the penalty and their right to appeal within 3 business days.

# Notes
- Requirement: UF-05 Main Flow Step 1 and Alternative Flow A3 ("Admin applies a penalty with a mandatory reason. Forged receipt proven: Penalty applies from the very first proven case").

# Attachments

# Script

---
*Last Updated: 2026-10-18 14:35*
