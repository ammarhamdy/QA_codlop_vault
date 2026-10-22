---
tc_id: TC-JOIN-011
title: Verify Tourism Permit Number Length Boundaries When Enabled by Admin
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Start-Join-Application.md
tags:
  - test-case
---

# Test Data
| Permit Number Input | Digits Count | Boundary Condition | Expected System Result |
| ------------------- | ------------ | ------------------ | ---------------------- |
| `12345` | 5 digits | Below minimum (<6) | Rejected: `«رقم التصريح من 6 إلى 12 رقمًا»` |
| `123456` | 6 digits | Exact minimum | Valid / Accepted |
| `123456789` | 9 digits | Mid-range | Valid / Accepted |
| `123456789012` | 12 digits | Exact maximum | Valid / Accepted |
| `1234567890123` | 13 digits | Exceeds maximum (>12)| Rejected: `«رقم التصريح من 6 إلى 12 رقمًا»` |

# Preconditions
1. Admin has enabled the Tourism Permit Number field in Join Settings (UF-34).
2. User is on the join application form.

# Steps
1. Enter `12345` (5 digits) into the Tourism Permit field and observe validation.
2. Enter `123456` (6 digits) and verify acceptance.
3. Enter `123456789012` (12 digits) and verify acceptance.
4. Enter `1234567890123` (13 digits) and observe validation.

# Expected Result
1. The field strictly enforces the 6 to 12 digit boundary.
2. Inputs shorter than 6 digits or longer than 12 digits are rejected with the error message: `«رقم التصريح من 6 إلى 12 رقمًا»`.
3. Valid lengths (6 to 12 digits) are accepted.

# Notes
- Requirement: UF-28 Alternative Flow A4 & Error Flow E7.

# Attachments

# Script

---
*Last Updated: 2026-10-22 10:55*
