---
tc_id: TC-BANK-035
title: Admin Bank Accounts Review - View-Only Mode with Partially Masked IBAN and Restricted Editing
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Bank-Account.md
tags:
  - test-case
---

# Test Data
| Field | Expected Admin View Representation |
| ----- | ---------------------------------- |
| Mode | View Only (`للقراءة فقط`) |
| IBAN Display | Partially hidden (e.g., `SA03 ******* 7519`) |
| Mutation Controls | Add, Edit, Delete, Assign actions are strictly forbidden/disabled |

# Preconditions
1. Admin user is authenticated and possesses permissions to view lessor profiles in the admin panel.
2. Lessor has one or more registered bank accounts.

# Steps
1. In the admin control panel, navigate to Lessor Management and open the profile of the target lessor.
2. Locate the "Bank Accounts" tab / card.
3. Observe how the accounts and IBAN numbers are rendered by default.
4. Attempt to locate or execute actions to:
   - Add a bank account on behalf of the lessor.
   - Edit an existing bank account.
   - Delete a lessor bank account.
   - Assign an account to a chalet.

# Expected Result
1. The admin panel renders lessor bank accounts in strictly view-only mode.
2. The IBAN is partially hidden/masked by default to protect financial privacy.
3. Admins are strictly prohibited from adding, modifying, deleting, or reassigning lessor bank accounts; no action buttons or API endpoints are exposed for admin mutations.

# Notes
- Requirement: UF-79 (Main Flow Step 1, Error Flow E1; Notes: admin view only, partial IBAN, no admin edit).

# Attachments

# Script

---
*Last Updated: 2026-10-22 15:40*
