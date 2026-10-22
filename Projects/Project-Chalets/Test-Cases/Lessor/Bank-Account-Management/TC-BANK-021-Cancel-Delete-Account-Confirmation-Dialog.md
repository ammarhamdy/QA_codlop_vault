---
tc_id: TC-BANK-021
title: Delete Bank Account - Cancel Deletion Dialog Aborts Action Without Changes
priority: Low
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Bank-Account.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Target Account | Bank Account #2 |
| Action | Tap Cancel / Dismiss dialog |

# Preconditions
1. Lessor has at least two accounts saved.
2. Lessor opens the delete dialog for an account.

# Steps
1. Navigate to "Bank Accounts".
2. Tap **"Delete"** on Bank Account #2.
3. When the confirmation modal appears, tap **"Cancel"** (`إلغاء`) or dismiss the modal by tapping outside.
4. Verify the Bank Accounts list.

# Expected Result
1. The deletion process is aborted immediately.
2. No OTP verification code is generated or sent.
3. The bank account remains intact in the list.
4. No chalet assignments are altered, and no audit log or SMS notification is triggered.

# Notes
- Requirement: UF-73 (Alternative Flow A2).

# Attachments

# Script

---
*Last Updated: 2026-10-22 15:40*
