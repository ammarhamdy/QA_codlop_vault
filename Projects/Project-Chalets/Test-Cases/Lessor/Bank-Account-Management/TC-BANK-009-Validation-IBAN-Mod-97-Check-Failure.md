---
tc_id: TC-BANK-009
title: Validation - IBAN Modulo 97 Remainder Check Failure
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Bank-Account.md
tags:
  - test-case
---

# Test Data
| Field | Value | Description |
| ----- | ----- | ----------- |
| Valid IBAN | `SA0380000000608010167519` | Correct check digits `03` (Mod 97 = 1) |
| Invalid Check Digit IBAN | `SA9980000000608010167519` | Incorrect check digits `99` (Fails Mod 97 algorithm) |
| Corrupted Account Number | `SA0380000000608010167518` | Last digit altered from 9 to 8 |

# Preconditions
1. User is on the "Add Account" or "Edit Account" form.
2. Valid beneficiary name and bank are entered.

# Steps
1. Enter the corrupted IBAN `SA9980000000608010167519` into the IBAN field.
2. Complete all other mandatory fields.
3. Tap **"Save"** (`حفظ`).
4. Repeat with the second invalid checksum IBAN `SA0380000000608010167518`.

# Expected Result
1. The system computes the international standard ISO 7064 Modulo 97-10 check algorithm on the entered IBAN.
2. Because the remainder check fails, the IBAN is rejected.
3. The form indicates an invalid IBAN error, does not trigger OTP dispatch, and prevents saving the account.

# Notes
- Requirement: UF-71 (Main Flow Step 4: "Validates the format and the remainder check (mod 97)"; Error Flow E3).

# Attachments

# Script

---
*Last Updated: 2026-10-22 15:40*
