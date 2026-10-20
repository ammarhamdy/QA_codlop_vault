---
tc_id: TC-ACC-DEL-012
title: Account Deletion Blocked by Pending Payment Request
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/Role-Profile/Client
tags:
  - test-case
  - regression
---

# Test Data
| Field | Value |
| ----- | ----- |
| user_phone | +966508901234 |
| payment_request_id | PAY-2026-000456 |
| payment_status | awaiting_approval |

# Preconditions
-User account is in `active` status (user has host role or pending host package subscription).
-User has submitted a bank transfer receipt for package payment request `PAY-2026-000456` with    status `awaiting_approval`.
-User is logged in to the mobile application.

# Steps
1. Navigate to "حسابي" > "حذف الحساب".
2. Observe the blockers list evaluated via `GET /me/deletion`.
3. Verify the blocker warning displayed on screen.
4. Attempt to proceed with deletion.

# Expected Result
- The deletion screen identifies the pending payment request as an active blocker.
- The UI renders the explicit error text:
   "لا يمكن حذف الحساب وطلب الدفع PAY-2026-000456 قيد المراجعة. ألغه أو انتظر القرار".
- The continue button is disabled, and any direct call to `POST /me/deletion` returns HTTP 422 `DELETION_BLOCKED`.
- Account status remains `active`.
- The payment request remains intact in the admin review queue.

# Notes


# Attachments

# Script

---
*Last Updated: 2026-10-20 12:20*
