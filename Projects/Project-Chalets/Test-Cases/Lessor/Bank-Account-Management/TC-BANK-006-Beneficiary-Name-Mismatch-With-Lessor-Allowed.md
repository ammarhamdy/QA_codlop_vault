---
tc_id: TC-BANK-006
title: Beneficiary Name Mismatch with Registered Lessor Profile Name is Allowed
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
| Registered Lessor Profile Name | `عبد العزيز محمد القحطاني` |
| Beneficiary Name Entered | `مؤسسة أفق الضيافة لإدارة الأملاك` (Completely different name) |
| Bank Name | `مصرف الإنماء` (Alinma Bank) |
| IBAN | `SA0305000004567890123456` |
| Account Ownership | `In my name` or `In another person's name` (with acknowledgment) |

# Preconditions
1. User is authenticated as lessor `عبد العزيز محمد القحطاني`.
2. User opens the "Add Account" screen.

# Steps
1. In the **Beneficiary Name** field, enter a name that is completely distinct from the lessor's official registered name (`مؤسسة أفق الضيافة لإدارة الأملاك`).
2. Fill in the remaining fields with valid bank and IBAN details.
3. Tap **"Save"** and complete the OTP verification step.

# Expected Result
1. The system does NOT enforce strict name matching between the beneficiary name and the lessor's account name.
2. The account is accepted and successfully saved without triggering any mismatch or identity-blocking error (accommodating property managers managing third-party owned chalets).

# Notes
- Requirement: UF-71 (Alternative Flow A2: "Allowed. Name matching is not required (many lessors manage chalets owned by others)").

# Attachments

# Script

---
*Last Updated: 2026-10-22 15:40*
