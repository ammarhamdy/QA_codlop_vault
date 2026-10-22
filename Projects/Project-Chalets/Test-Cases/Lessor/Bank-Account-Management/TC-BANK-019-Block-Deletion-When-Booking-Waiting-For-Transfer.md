---
tc_id: TC-BANK-019
title: Validation - Block Deletion of Bank Account with Active Booking Waiting for Bank Transfer
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Bank-Account.md
tags:
  - test-case
---

# Test Data
| Entity | State |
| ------ | ----- |
| Target Account | Bank Account #2 (`SA0320000002345678901234`) |
| Linked Booking Status | `Waiting for transfer` (`بانتظار التحويل` / Temporary Booking awaiting customer receipt) |

# Preconditions
1. Lessor has an active bank account (Account #2).
2. A customer has placed a booking on a chalet using Account #2, and the booking is currently in status "Waiting for transfer" (not yet paid or confirmed).

# Steps
1. Navigate to "Bank Accounts".
2. Select Account #2.
3. Tap **"Delete"** (`حذف`).
4. Attempt to confirm the deletion.

# Expected Result
1. The deletion operation is blocked by the system.
2. The system prevents deleting an account while any booking is actively waiting for a payment transfer to that account.
3. An appropriate warning/error message is displayed explaining that pending transfers are linked to this account.
4. The account remains fully intact and active in the lessor's profile.

# Notes
- Requirement: UF-73 (Notes - closed questions: "🟢Can an account be deleted while a booking is waiting for its transfer? No").

# Attachments

# Script

---
*Last Updated: 2026-10-22 15:40*
