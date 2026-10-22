---
tc_id: TC-BANK-018
title: Validation - Block Direct Deletion of the Default Bank Account While Other Accounts Exist
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Bank-Account.md
tags:
  - test-case
---

# Test Data
| Entity | Role | Action Attempted | Expected Outcome |
| ------ | ---- | ---------------- | ---------------- |
| Account 1 | **Default Account** | Tap Delete | Deletion blocked (Must switch default first) |
| Account 2 | Active Secondary Account | Selected as New Default | Becomes Default |
| Account 1 (Post-switch) | Former Default (Now Secondary) | Tap Delete | Deletion allowed |

# Preconditions
1. Lessor has at least two saved bank accounts (Account 1 is currently designated as the default account).
2. Lessor is in the "Bank Accounts" management screen.

# Steps
1. Locate Account 1 (marked with the Default badge).
2. Attempt to tap **"Delete"** or check if the delete option is accessible/enabled for the default account.
3. Observe the system response or error message.
4. Select Account 2 and tap **"Set as Default"** (`تعيين كافتراضي`).
5. Verify that Account 2 is now the active default.
6. Return to Account 1 (which is now a regular secondary account) and tap **"Delete"**.
7. Confirm deletion and complete OTP verification.

# Expected Result
1. Direct deletion of the default account is strictly prohibited when other accounts exist; the user MUST switch the default account designation first before deleting.
2. The UI either disables the delete button on the active default account or displays a clear error instructing the user to change the default account first.
3. Once another account is designated as default, Account 1 can be successfully deleted following standard delete rules.

# Notes
- Requirement: UF-73 (Notes - closed questions: "If the deleted account is the default and other accounts remain, which account becomes the default? Default can not be deleted MUST switch it first").

# Attachments

# Script

---
*Last Updated: 2026-10-22 15:40*
