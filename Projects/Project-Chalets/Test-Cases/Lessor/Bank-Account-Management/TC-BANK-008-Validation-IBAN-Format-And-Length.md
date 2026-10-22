---
tc_id: TC-BANK-008
title: Validation - IBAN Format, Prefix ('SA'), and Length (24 Characters)
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Bank-Account.md
tags:
  - test-case
---

# Test Data
| Input Scenario | IBAN Value Entered | Reason for Invalidation | Expected Status |
| -------------- | ------------------ | ----------------------- | --------------- |
| Valid Saudi IBAN | `SA0380000000608010167519` | Exactly 24 chars, SA + 22 digits | Accepted |
| Valid with spaces | `SA 03 8000 0000 6080 1016 7519` | Format valid after strip | Accepted (spaces removed) |
| Missing Prefix | `038000000060801016751900` | Missing `SA` prefix | Rejected |
| Non-Saudi Prefix | `AE0380000000608010167519` | UAE prefix `AE` instead of `SA` | Rejected |
| Short Length | `SA0380000000608010167` | 21 characters (< 24) | Rejected |
| Long Length | `SA038000000060801016751999` | 26 characters (> 24) | Rejected |
| Non-Numeric Body | `SA038000000060801016ABCD` | Non-digit characters in body | Rejected |

# Preconditions
1. User is on the "Add Account" or "Edit Account" screen.
2. Valid Beneficiary Name and Bank are provided.

# Steps
1. Test each invalid IBAN string from the test data table sequentially in the IBAN input field.
2. Attempt to tap **"Save"**.
3. Verify system validation behavior and error state for each invalid attempt.
4. Finally, enter a valid 24-character Saudi IBAN (with and without space formatting) and tap **"Save"**.

# Expected Result
1. Any IBAN that does not begin with `SA` followed by exactly 22 numeric digits is rejected.
2. An appropriate validation error is indicated; the user cannot proceed to the OTP verification step.
3. A valid 24-character Saudi IBAN passes format validation successfully.

# Notes
- Requirement: UF-71 (Main Flow Step 4, Error Flow E3).

# Attachments

# Script

---
*Last Updated: 2026-10-22 15:40*
