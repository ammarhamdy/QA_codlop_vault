---
tc_id: TC-BANK-013
title: Edit Bank Account Details - Update Beneficiary, Bank, and IBAN with OTP Verification
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Bank-Account.md
tags:
  - test-case
---

# Test Data
| Field | Initial Saved Value | Updated Value |
| ----- | ------------------- | ------------- |
| Beneficiary Name | `سلطان فهد الرويلي` | `سلطان فهد بن عبد العزيز الرويلي` |
| Bank Name | `بنك الرياض` | `مصرف الراجحي` |
| IBAN | `SA0320000002345678901234` | `SA0380000000608010167519` |
| OTP Code | n/a | `1234` (Valid 4-digit code) |

# Preconditions
1. Lessor is accepted and logged in with at least one existing saved bank account.
2. Lessor has a verified registered mobile number.

# Steps
1. Navigate to "Bank Accounts" (`الحسابات البنكية`).
2. Open the existing bank account card and tap **"Edit"** (`تعديل`).
3. Verify that the form opens pre-populated with the current saved values.
4. Modify the Beneficiary Name, select a different Bank, and replace the IBAN with the new valid IBAN.
5. Tap **"Save"** (`حفظ`).
6. Verify that an OTP prompt appears and a verification code is sent via SMS.
7. Enter the valid OTP code (`1234`) and submit.

# Expected Result
1. The edit form allows changing all fields including the IBAN itself.
2. The modified inputs are validated against UF-71 rules (name length, bank presence, IBAN format & mod 97).
3. Upon entering the valid code, changes are committed to the account.
4. The Bank Accounts list displays the new values immediately.
5. An SMS notification `تم تغيير حساب بنكي في حسابك على تنفيذ`, an in-app notice, and an audit line detailing before-and-after values (with IBAN partially masked) are generated.

# Notes
- Requirement: UF-72 (Main Flow Steps 1-5; Notes - closed questions: "Which fields can be edited, and can the IBAN change? Yes"), UF-76.

# Attachments

# Script

---
*Last Updated: 2026-10-22 15:40*
