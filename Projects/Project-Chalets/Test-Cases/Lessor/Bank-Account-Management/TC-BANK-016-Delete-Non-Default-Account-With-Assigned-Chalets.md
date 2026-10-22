---
tc_id: TC-BANK-016
title: Delete Bank Account - Delete Non-Default Account with Assigned Chalets and Confirm Fallback to Default
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Bank-Account.md
tags:
  - test-case
---

# Test Data
| Entity | Role | Last 4 IBAN | Assigned Places |
| ------ | ---- | ----------- | --------------- |
| Account 1 | **Default Account** | `1111` | Not directly targeted |
| Account 2 | **Target Account** (Non-default) | `7519` | Explicitly assigned to 3 chalets (`n = 3`) |
| Confirmation Message Format | `حذف الحساب {آخر 4}؟ {n} أماكن ستستخدم الحساب الافتراضي` | Expected: `حذف الحساب 7519؟ 3 أماكن ستستخدم الحساب الافتراضي` |

# Preconditions
1. Lessor has two active bank accounts: Account 1 (marked Default) and Account 2.
2. Account 2 is assigned to 3 specific chalets.
3. No active booking is currently waiting for bank transfer on Account 2.

# Steps
1. Navigate to "Bank Accounts" list.
2. Locate Account 2 and tap **"Delete"** (`حذف`).
3. Observe the confirmation dialog text and parameters.
4. Tap **Confirm** (`تأكيد`).
5. Enter the valid OTP code received on the registered mobile.
6. Check the Bank Accounts list.
7. Open each of the 3 chalets that were previously assigned to Account 2.

# Expected Result
1. The confirmation dialog explicitly displays: `حذف الحساب 7519؟ 3 أماكن ستستخدم الحساب الافتراضي`.
2. Confirming triggers the OTP verification step.
3. Upon valid OTP entry, Account 2 is permanently deleted from the lessor's account list.
4. All 3 chalets automatically fall back to using Account 1 (the Default Account) for any future booking transfers.
5. Change notification (SMS, in-app notice) and audit log record are generated.

# Notes
- Requirement: UF-73 (Main Flow Steps 1-5).

# Attachments

# Script

---
*Last Updated: 2026-10-22 15:40*
