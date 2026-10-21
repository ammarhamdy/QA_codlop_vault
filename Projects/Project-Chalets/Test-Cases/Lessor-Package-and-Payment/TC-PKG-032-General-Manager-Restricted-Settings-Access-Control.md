---
tc_id: TC-PKG-032
title: Verify Access Control Restricts Sensitive Payment Settings to General Manager Role
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Package-and-Payment-Method/Package-and-Payment-Method.md
tags:
  - test-case
---

# Test Data
| Setting Category | Restricted Setting Items | Authorized Role |
| ---------------- | ------------------------ | --------------- |
| Platform Bank Accounts | Beneficiary details, IBAN numbers | General Manager only |
| Payment Gateway Setup | API credentials, Webhook secret keys, Test/Live mode | General Manager only |
| Tax / Invoicing | Invoice Key activation toggle | General Manager only |
| General Package Management | Package price, duration, priority, reasons | Standard Admin / Operations |

# Preconditions
1. User A is authenticated as Standard Operations Admin.
2. User B is authenticated as General Manager (`المدير العام`).

# Steps
1. Log in as User A (Standard Admin) and open Admin Panel -> Packages & Payment Settings.
2. Attempt to view, add, or edit Platform Bank Accounts or Gateway API Credentials.
3. Attempt to toggle the Invoice Key.
4. Log out and log in as User B (General Manager).
5. Open the same restricted payment settings.
6. Edit a platform bank account IBAN and save changes.

# Expected Result
1. For User A (Standard Admin), restricted settings (Platform Bank Accounts, Gateway Credentials, Invoice Key) are either completely hidden, read-only, or any edit attempt is rejected with authorization error (Error Flow E2).
2. For User B (General Manager), access is granted; changes are validated, saved, and logged in the system audit trail.

# Notes
- Requirement: UF-48 Main Flow Step 5 & Error Flow E2 ("A non-General-Manager edits a restricted setting -> Not allowed").

# Attachments

# Script

---
*Last Updated: 2026-10-21 14:40*
