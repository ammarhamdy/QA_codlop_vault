---
tc_id: TC-BANK-025
title: Chalet Account Assignment - Remove Specific Account Assignment and Revert to Default Account
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
| Chalet | `شاليه النسيم` |
| Current State | Assigned to specific Account 2 |
| Target State | Reverted to **Default Account** (`الحساب الافتراضي`) |
| OTP Code | `1234` |

# Preconditions
1. Chalet "شاليه النسيم" is currently explicitly assigned to specific Account 2.
2. Lessor has an established default account (Account 1).

# Steps
1. Open "Place and Ad Details" for "شاليه النسيم".
2. In the Bank Account section, remove the specific assignment by choosing "Use Default Account" (`استخدام الحساب الافتراضي`) or selecting the default account option.
3. Tap **"Save"**.
4. Enter the valid OTP code received on the registered mobile.
5. Review the saved details on the chalet.

# Expected Result
1. The lessor is permitted to remove the specific account assignment and return the chalet to the default account.
2. Upon OTP confirmation, the chalet's specific link is cleared and it now uses the default account.
3. Notification and audit line are recorded for the modification.

# Notes
- Requirement: UF-75 (Notes - closed questions: "Can the lessor remove the specific account and go back to the default? Yes").

# Attachments

# Script

---
*Last Updated: 2026-10-22 15:40*
