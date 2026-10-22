---
tc_id: TC-BANK-014
title: Edit Account - Switch Ownership from "In My Name" to "In Another Person's Name" Requires No Re-acknowledgment
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Bank-Account.md
tags:
  - test-case
---

# Test Data
| Field | Original Account State | Updated Account State |
| ----- | ---------------------- | --------------------- |
| Account Ownership | `In my name` (`باسم`) | `In another person's name` (`باسم شخص آخر`) |
| Beneficiary Name | `خالد بن عبد الله` | `شركة إدارة الأملاك` |
| Re-acknowledgment Requirement | None | NOT required again during edit |

# Preconditions
1. Lessor has an existing bank account saved with ownership designated as "In my name".
2. Lessor opens the edit screen for this account.

# Steps
1. In the edit form, switch ownership radio/selection from **"In my name"** to **"In another person's name"**.
2. Update the beneficiary name.
3. Observe whether an acknowledgment checkbox is mandated.
4. Tap **"Save"**.
5. Enter the valid OTP verification code sent to the registered mobile.

# Expected Result
1. The system does NOT enforce ticking the third-party acknowledgment disclaimer again when editing an existing account.
2. The user can proceed directly to Save and OTP verification without being blocked by an acknowledgment error.
3. The ownership change is saved successfully.

# Notes
- Requirement: UF-72 (Notes - closed questions: "If the account switches from 'In my name' to 'In another person's name', is the acknowledgment required again? No").

# Attachments

# Script

---
*Last Updated: 2026-10-22 15:40*
