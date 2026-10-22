---
tc_id: TC-BANK-022
title: Set Default Bank Account - Switch Active Default Account Without OTP Verification
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Bank-Account.md
tags:
  - test-case
---

# Test Data
| Entity | Initial Status | Action | Post-Action Status |
| ------ | -------------- | ------ | ------------------ |
| Account A | Default (`الافتراضي`) | None | Regular (Default removed) |
| Account B | Regular | Tap "Set as Default" (`تعيين كافتراضي`) | Becomes Default |
| OTP Prompt | None | None | No OTP code requested |

# Preconditions
1. Lessor is accepted and logged in.
2. Lessor has at least two saved bank accounts (Account A is currently the default).

# Steps
1. Navigate to "Bank Accounts" (`الحسابات البنكية`).
2. Select Account B (currently not the default).
3. Tap **"Set as Default"** (`تعيين كافتراضي`).
4. Observe whether any verification code (OTP) prompt appears.
5. Review the Bank Accounts list and check the indicators on Account A and Account B.

# Expected Result
1. Tapping "Set as Default" does NOT trigger an OTP verification code screen (setting default does not require OTP).
2. Account B is immediately marked with the **"Default"** badge.
3. Account A ceases to be the default account (system strictly enforces exactly one default account at any time).
4. Chalets without a specific assigned account will now automatically use Account B for new bookings.

# Notes
- Requirement: UF-74 (Main Flow Steps 1-3, Alternative Flow A1; Notes - closed questions: "Does setting the default need a verification code? No", "Is there exactly one default account at any time? Yes only one").

# Attachments

# Script

---
*Last Updated: 2026-10-22 15:40*
