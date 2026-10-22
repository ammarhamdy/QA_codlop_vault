---
tc_id: TC-BANK-017
title: Delete Bank Account - Delete Non-Default Account with Zero Assigned Chalets (n = 0)
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Bank-Account.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Account Under Deletion | Non-default account |
| Assigned Places Count (`n`) | `0` (No chalets use this account) |
| Active Bookings on Account | `0` |

# Preconditions
1. Lessor has at least two accounts (one Default, one Secondary).
2. The secondary account is not assigned to any chalet (`n = 0`).
3. No pending bookings are waiting on this account.

# Steps
1. Navigate to "Bank Accounts".
2. Select the secondary account with zero assignments and tap **"Delete"**.
3. Inspect the confirmation dialog content.
4. Confirm deletion and complete OTP verification.

# Expected Result
1. Because no chalets are assigned to this account (`n = 0`), the dialog does not mention chalet fallback (`ستستخدم الحساب الافتراضي`); it simply requests confirmation to delete the account.
2. After OTP verification, the account is removed immediately without altering any chalet settings.

# Notes
- Requirement: UF-73 (Notes - closed questions: "What does the dialog show when no chalet uses the account ({n} = 0)? Nothing Just delete the account").

# Attachments

# Script

---
*Last Updated: 2026-10-22 15:40*
