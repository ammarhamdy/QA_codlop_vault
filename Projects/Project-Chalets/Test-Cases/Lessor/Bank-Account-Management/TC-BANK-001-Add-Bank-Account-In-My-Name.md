---
tc_id: TC-BANK-001
title: Add Bank Account - "In My Name" Happy Path with Valid Data and OTP Verification
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Bank-Account.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Beneficiary Name | `خالد بن عبد الله التميمي` (Valid Arabic name, 24 characters) |
| Bank Name | Selected from Saudi Banks List: `مصرف الراجحي` (Al Rajhi Bank) |
| IBAN | Valid Saudi IBAN: `SA0380000000608010167519` (24 characters, passes mod 97) |
| Account Ownership | **In my name** (`باسم`) |
| OTP Code | `1234` (Valid 4-digit code sent to registered mobile) |

# Preconditions
1. The user is an accepted and authenticated lessor.
2. The lessor has a verified registered mobile number associated with their account.
3. The lessor navigates to the "Bank Accounts" (`الحسابات البنكية`) section.

# Steps
1. Tap **"Add Account"** (`إضافة حساب`).
2. Verify that the bank account entry form is displayed.
3. Enter `خالد بن عبد الله التميمي` in the **Beneficiary Name** field.
4. Select `مصرف الراجحي` from the Saudi banks dropdown list.
5. Enter the valid 24-character IBAN `SA0380000000608010167519`.
6. Select **"In my name"** (`باسم`).
7. Verify that no third-party acknowledgment checkbox is shown.
8. Tap **"Save"** (`حفظ`).
9. Verify that an OTP entry screen is presented and a 4-digit verification code is dispatched via SMS.
10. Enter the valid OTP code (`1234`) and confirm.

# Expected Result
1. The form validates all entered fields successfully without format or length errors.
2. No acknowledgment prompt is required for personal accounts.
3. The system verifies the OTP code, saves the bank account, and associates it with the lessor profile.
4. The IBAN is stored stripped of any spaces and encrypted in the database.
5. An SMS notification `تم تغيير حساب بنكي في حسابك على تنفيذ` and an in-app notice are sent to the lessor.
6. An audit record is created capturing the addition with the IBAN partially masked.
7. The user is returned to the Bank Accounts list showing the newly added account.

# Notes
- Requirement: UF-71 (Main Flow, Steps 1-9; Alternative A1), UF-76.

# Attachments

# Script

---
*Last Updated: 2026-10-22 15:40*
