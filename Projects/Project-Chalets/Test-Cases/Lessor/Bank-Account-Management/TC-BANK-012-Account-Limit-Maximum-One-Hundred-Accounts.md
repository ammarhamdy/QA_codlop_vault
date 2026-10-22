---
tc_id: TC-BANK-012
title: Account Limit - Enforce Maximum Limit of 100 Bank Accounts per Lessor
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Bank-Account.md
tags:
  - test-case
---

# Test Data
| Stage | Account Count in Profile | Expected System Action |
| ----- | ------------------------ | ---------------------- |
| Baseline | 99 saved accounts | Allowed to add 100th account |
| Boundary Limit | 100 saved accounts | "Add Account" action blocked or disabled |
| Post-Delete | 99 saved accounts (after 1 deleted) | "Add Account" becomes available again |

# Preconditions
1. Test lessor account is seeded with 99 valid bank accounts.
2. Lessor is logged in and navigates to "Bank Accounts".

# Steps
1. Tap **"Add Account"** and successfully add the 100th bank account with valid OTP verification.
2. Confirm the account count reaches 100.
3. Observe the "Bank Accounts" UI for the **"Add Account"** button or attempt to trigger the add flow.
4. Attempt to submit a 101st account if entry is accessible.
5. Delete one non-default account so the total returns to 99.
6. Verify whether the ability to add an account is restored.

# Expected Result
1. The 100th account is successfully accepted and saved.
2. When the lessor reaches 100 accounts, adding further accounts is blocked (button disabled/hidden or error prevents submission).
3. Once an account is deleted and count falls below 100, the lessor can add an account again.

# Notes
- Requirement: UF-71 (Notes - closed questions: "Is there a maximum number of accounts? Yes 100").

# Attachments

# Script

---
*Last Updated: 2026-10-22 15:40*
