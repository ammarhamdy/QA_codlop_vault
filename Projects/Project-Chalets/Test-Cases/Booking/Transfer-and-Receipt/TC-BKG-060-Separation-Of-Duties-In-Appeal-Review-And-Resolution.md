---
tc_id: TC-BKG-060
title: Verify Separation of Duties in Appeal Review and Penalty Lifting with Mandatory Reason
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
| Penalty Reference | `PEN-2026-000089` |
| Imposing Admin User | `admin_employee_1` |
| Unauthorized Reviewer | `admin_employee_1` (Same person who imposed penalty) |
| Authorized Reviewer 1 | `system_manager_1` (System Manager) |
| Authorized Reviewer 2 | `general_manager_1` (General Manager) |
| Resolution Type | Accepted (Appeal Approved / Penalty Lifted) |
| Mandatory Lifting Reason | `ثبت من كشف الحساب البنكي صحة التحويل وتطابق رقم العملية` |

# Preconditions
1. Penalty `PEN-2026-000089` was imposed by employee `admin_employee_1`.
2. Customer submitted an appeal within 3 business days.
3. System supports role-based access control with separation of duties enforcement.

# Steps
1. Log in as `admin_employee_1` (the employee who imposed the penalty) and attempt to review or decide on the appeal for `PEN-2026-000089`.
2. Log in as regular staff member (non-manager) and attempt to decide on the appeal.
3. Log in as `system_manager_1` or `general_manager_1`.
4. Open the appeal review interface.
5. Attempt to accept the appeal and lift the penalty without providing a reason.
6. Enter mandatory lifting reason: `ثبت من كشف الحساب البنكي صحة التحويل وتطابق رقم العملية`.
7. Confirm lifting the penalty.

# Expected Result
1. The employee who imposed the penalty (`admin_employee_1`) is strictly barred from reviewing or deciding on the appeal (Step 1 fails with permission denied).
2. Non-manager staff are barred from deciding on appeals.
3. Only the System Manager or General Manager has authorization to adjudicate appeals.
4. Lifting the penalty without a reason is blocked; the reason is mandatory.
5. Upon approval by an authorized manager with the reason recorded, the penalty is manually lifted and the customer is notified of the decision.

# Notes
- Requirement: UF-05 Main Flow Step 3, Alternative Flow A4, and Error Flow E3 ("Reviewer is the same person who imposed the penalty: Not allowed. Appeal accepted: Penalty lifted manually with the reason recorded").

# Attachments

# Script

---
*Last Updated: 2026-10-18 14:35*
