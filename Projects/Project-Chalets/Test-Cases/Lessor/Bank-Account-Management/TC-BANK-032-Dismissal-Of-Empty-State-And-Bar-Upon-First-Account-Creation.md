---
tc_id: TC-BANK-032
title: Lessor Dashboard & UI - Immediate Dismissal of Alert Bar and Empty State Upon First Account Creation
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
| Initial Account Count | `0` |
| Account Added | Valid Bank Account with valid OTP |
| Post-Add Account Count | `1` |

# Preconditions
1. Lessor currently has zero bank accounts.
2. Lessor dashboard currently displays the alert bar `أضف حسابًا بنكيًا ليتمكن العملاء من الحجز`.

# Steps
1. From the dashboard bar or the Bank Accounts screen, tap **"Add Account"**.
2. Complete all form inputs with valid bank account details and submit.
3. Successfully complete OTP verification.
4. Immediately return to the Lessor Dashboard.
5. Navigate to the "Bank Accounts" screen.

# Expected Result
1. The dashboard alert bar `أضف حسابًا بنكيًا ليتمكن العملاء من الحجز` disappears immediately.
2. The Bank Accounts screen replaces the empty state illustration and message with the saved account card.
3. The newly added account is marked as Default.

# Notes
- Requirement: UF-77 (Alternative Flow A1; Notes - closed questions: "Does the dashboard bar disappear immediately after the first account is saved? Yes").

# Attachments

# Script

---
*Last Updated: 2026-10-22 15:40*
