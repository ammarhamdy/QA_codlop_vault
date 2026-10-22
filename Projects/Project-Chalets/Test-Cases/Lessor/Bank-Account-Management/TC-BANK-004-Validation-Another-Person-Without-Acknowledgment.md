---
tc_id: TC-BANK-004
title: Validation - Block Submission When "In Another Person's Name" Selected Without Acknowledgment Checkbox
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
| Beneficiary Name | `عمر سليمان الحربي` |
| Bank Name | `بنك البلاد` (Bank Albilad) |
| IBAN | `SA0315000003456789012345` |
| Account Ownership | **In another person's name** (`باسم شخص آخر`) |
| Acknowledgment Checkbox | Unticked (`Unchecked`) |
| Expected Error Message | `يجب الإقرار بموافقة صاحب الحساب` |

# Preconditions
1. User is an accepted and logged-in lessor.
2. User is on the "Add Account" form.

# Steps
1. Enter valid Beneficiary Name, Bank, and IBAN.
2. Select **"In another person's name"** (`باسم شخص آخر`).
3. Observe the acknowledgment checkbox «أقر بأن صاحب الحساب موافق على استقبال المبالغ وعرض بياناته وأتحمل المسؤولية».
4. Leave the acknowledgment checkbox **unticked**.
5. Tap **"Save"** (`حفظ`).

# Expected Result
1. The form submission is blocked.
2. No OTP verification code is triggered or sent to the registered mobile.
3. An explicit Arabic inline validation error message is displayed: `يجب الإقرار بموافقة صاحب الحساب`.
4. The user remains on the form with all entered details retained.

# Notes
- Requirement: UF-71 (Error Flow E1).

# Attachments

# Script

---
*Last Updated: 2026-10-22 15:40*
