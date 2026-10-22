---
tc_id: TC-BANK-011
title: Duplicate IBAN Usage - Same IBAN Allowed Across Multiple Accounts or Multiple Lessors
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Bank-Account.md
tags:
  - test-case
---

# Test Data
| Entity | User Profile | IBAN Assigned |
| ------ | ------------ | ------------- |
| Account 1 | Lessor A | `SA0380000000608010167519` |
| Account 2 | Lessor A (Duplicate entry under same lessor) | `SA0380000000608010167519` |
| Account 3 | Lessor B (Distinct lessor profile) | `SA0380000000608010167519` |

# Preconditions
1. Lessor A and Lessor B are accepted lessors in the system.
2. Lessor A has already registered bank account `SA0380000000608010167519`.

# Steps
1. As Lessor A, navigate to "Add Account" and enter the exact same IBAN `SA0380000000608010167519` with a different or same beneficiary name.
2. Complete OTP verification and confirm save.
3. Log out of Lessor A and log into Lessor B.
4. As Lessor B, navigate to "Add Account" and enter the exact same IBAN `SA0380000000608010167519`.
5. Complete OTP verification and confirm save.

# Expected Result
1. The system does NOT enforce global or per-lessor uniqueness constraints on the IBAN.
2. Lessor A successfully saves the duplicate IBAN under their profile.
3. Lessor B successfully saves the duplicate IBAN under their profile.
4. Both lessors can use and assign the account without error.

# Notes
- Requirement: UF-71 (Notes - closed questions: "Can the same IBAN be added twice by one lessor, or used by another lessor? Yes").

# Attachments

# Script

---
*Last Updated: 2026-10-22 15:40*
