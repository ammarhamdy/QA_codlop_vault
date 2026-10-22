---
tc_id: TC-JOIN-007
title: Verify Commercial Registration Number Validates for Exactly Ten Digits
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Start-Join-Application.md
tags:
  - test-case
---

# Test Data
| Test Input | Input Description | Expected Validation Result |
| ---------- | ----------------- | -------------------------- |
| `101012345` | 9 digits (Too short) | `«رقم السجل التجاري 10 أرقام»` |
| `10101234567` | 11 digits (Too long) | `«رقم السجل التجاري 10 أرقام»` |
| `1010ABC456` | Non-numeric characters | Rejected |
| `1010123456` | Exactly 10 digits | Valid / Accepted |

# Preconditions
1. User is on the Company application form.

# Steps
1. Enter `101012345` (9 digits) into the CR number input.
2. Observe validation error.
3. Enter `10101234567` (11 digits).
4. Observe validation error.
5. Enter valid 10-digit CR `1010123456`.
6. Observe field state.

# Expected Result
1. Any CR input with length not equal to 10 digits is rejected with the exact error message: `«رقم السجل التجاري 10 أرقام»`.
2. Input with non-numeric characters is disallowed.
3. When exactly 10 numeric digits are entered, the validation error clears.

# Notes
- Requirement: UF-28 Error Flow E4.

# Attachments

# Script

---
*Last Updated: 2026-10-22 10:55*
