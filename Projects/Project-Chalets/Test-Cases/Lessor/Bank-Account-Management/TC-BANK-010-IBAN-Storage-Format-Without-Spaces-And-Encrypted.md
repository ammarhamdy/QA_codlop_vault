---
tc_id: TC-BANK-010
title: Security & Architecture - IBAN Stored Without Spaces, Encrypted at Rest, and Stored Without Pre-verification
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Bank-Account.md
tags:
  - test-case
---

# Test Data
| Input Field | User Input | DB Persisted State |
| ----------- | ---------- | ------------------ |
| Raw IBAN Input | `SA 03 8000 0000 6080 1016 7519` (spaced input) | `SA0380000000608010167519` (no spaces, encrypted ciphertext) |
| Finance Review | None | No pre-verification gate by Finance department |

# Preconditions
1. User is an accepted lessor.
2. QA tester has database inspection access or backend audit tool access.

# Steps
1. Navigate to "Add Account" and enter the IBAN containing spaces between quadruplets: `SA 03 8000 0000 6080 1016 7519`.
2. Fill remaining required fields and submit.
3. Complete OTP verification successfully.
4. Inspect the underlying database table/record for the newly persisted bank account.
5. Check whether any Finance approval status is attached or blocking usage.

# Expected Result
1. The IBAN string is sanitized: all whitespace characters are stripped prior to storage (`SA0380000000608010167519`).
2. The IBAN field in storage is fully encrypted at rest (not stored as plaintext).
3. The account status is immediately active upon saving; no manual or automated pre-verification approval by the Finance team is required before it can be assigned or used.

# Notes
- Requirement: UF-71 (Postconditions, Notes: "The IBAN is stored without spaces and encrypted. Finance does not verify the IBAN in advance").

# Attachments

# Script

---
*Last Updated: 2026-10-22 15:40*
