---
tc_id: TC-BANK-002
title: Add First Bank Account - Auto-Set as Default Account and Reveal Book Button on Chalets
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
| Initial Account Count | `0` (Lessor has no saved bank accounts) |
| Beneficiary Name | `سارة عبد العزيز السعيد` |
| Bank Name | `البنك الأهلي السعودي` (Saudi National Bank) |
| IBAN | `SA0310000001234567890123` |
| Account Ownership | `In my name` |
| OTP Code | `1234` |

# Preconditions
1. The user is an accepted lessor who has zero bank accounts saved.
2. The lessor has at least one chalet created.
3. Prior to test execution, the "Book" (`احجز`) button is hidden on the lessor's chalets, and an empty state banner is visible on the dashboard.

# Steps
1. Navigate to "Bank Accounts" (`الحسابات البنكية`).
2. Tap **"Add Account"** (`إضافة حساب`).
3. Fill in all mandatory fields with valid test data.
4. Tap **"Save"** (`حفظ`).
5. Enter the valid OTP code received on the registered mobile number.
6. Verify the status of the newly created account in the "Bank Accounts" list.
7. Navigate to the customer view / preview of the lessor's chalet.

# Expected Result
1. The account is created successfully.
2. Because this is the lessor's first bank account, the system automatically sets it as the **Default Account** (`الحساب الافتراضي`) without requiring manual selection.
3. The dashboard prompt banner and empty-state warning disappear.
4. The **"Book"** (`احجز`) button now dynamically appears and becomes enabled on all published chalets owned by this lessor.

# Notes
- Requirement: UF-71 (Notes - Closed questions: first account set as default automatically), UF-77 (Steps 3-4, Postconditions).

# Attachments

# Script

---
*Last Updated: 2026-10-22 15:40*
