---
tc_id: TC-BANK-005
title: Validation - Beneficiary Name Length Boundaries (2 to 100 Characters)
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Bank-Account.md
tags:
  - test-case
---

# Test Data
| Test Condition | Beneficiary Name Input | Expected Status |
| -------------- | ---------------------- | --------------- |
| Below Min Length (1 char) | `أ` | Rejected (Length < 2) |
| Min Boundary (2 chars) | `علي` (or `أحمد` trimmed/2-char `أب`) | Accepted |
| Max Boundary (100 chars) | String of exactly 100 valid characters | Accepted |
| Above Max Length (101 chars) | String of 101 characters | Rejected (Length > 100) |
| Empty / Whitespace only | `   ` | Rejected |

# Preconditions
1. User is an accepted lessor on the "Add Account" or "Edit Account" form.
2. Valid Bank and IBAN are provided.

# Steps
1. Navigate to the Beneficiary Name field.
2. Test Case A (Boundary Lower): Enter a 1-character name (`م`) and tap **Save**.
3. Observe system validation.
4. Test Case B (Min Valid): Enter exactly 2 characters (`علي`) and tap **Save**.
5. Test Case C (Max Valid): Enter a valid string of exactly 100 characters and tap **Save**.
6. Test Case D (Boundary Upper): Enter a string of 101 characters and attempt submission.
7. Test Case E (Empty): Clear the field and attempt submission.

# Expected Result
1. Inputs with length < 2 or length > 100 characters fail validation; form submission is blocked and an appropriate validation error is indicated.
2. Valid boundaries (exactly 2 characters and exactly 100 characters) pass field validation successfully and proceed to the next step.
3. Whitespace-only inputs are treated as empty and rejected.

# Notes
- Requirement: UF-71 (Main Flow Step 2, Error Flow E4).

# Attachments

# Script

---
*Last Updated: 2026-10-22 15:40*
