---
tc_id: TC-BANK-003
title: Add Bank Account - "In Another Person's Name" with Mandatory Acknowledgment Checkbox
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
| Beneficiary Name | `فهد منصور الشمري` (Third-party owner) |
| Bank Name | `بنك الرياض` (Riyad Bank) |
| IBAN | `SA0320000002345678901234` |
| Account Ownership | **In another person's name** (`باسم شخص آخر`) |
| Mandatory Acknowledgment Text | `أقر بأن صاحب الحساب موافق على استقبال المبالغ وعرض بياناته وأتحمل المسؤولية` |
| Acknowledgment Checkbox | Ticked (`Checked`) |
| OTP Code | `1234` |

# Preconditions
1. User is an accepted and authenticated lessor.
2. Lessor has a verified registered mobile number.

# Steps
1. Navigate to "Bank Accounts" -> Tap **"Add Account"**.
2. Enter the third-party beneficiary name `فهد منصور الشمري`.
3. Select `بنك الرياض` from the bank options.
4. Enter the valid IBAN `SA0320000002345678901234`.
5. Under Account Ownership, select **"In another person's name"** (`باسم شخص آخر`).
6. Verify that the mandatory acknowledgment checkbox with exact text «أقر بأن صاحب الحساب موافق على استقبال المبالغ وعرض بياناته وأتحمل المسؤولية» appears.
7. Tick the acknowledgment checkbox.
8. Tap **"Save"**.
9. Enter the valid OTP code received on the registered mobile.

# Expected Result
1. Selecting "In another person's name" immediately displays the fixed legal acknowledgment disclaimer.
2. Ticking the checkbox enables form submission.
3. Upon entering the correct OTP, the system successfully persists the account record along with:
   - The exact acknowledgment text accepted.
   - The timestamp of acceptance.
4. Change notification (SMS and in-app notice) and audit line are generated.

# Notes
- Requirement: UF-71 (Steps 5, 6, 8, 9; Notes - closed questions: acknowledgment text is fixed).

# Attachments

# Script

---
*Last Updated: 2026-10-22 15:40*
