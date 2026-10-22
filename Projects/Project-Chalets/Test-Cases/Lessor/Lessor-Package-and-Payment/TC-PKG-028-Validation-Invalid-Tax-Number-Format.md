---
tc_id: TC-PKG-028
title: Verify Validation Rejects Invalid Tax Number Formats
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Package-and-Payment-Method/Package-and-Payment-Method.md
tags:
  - test-case
---

# Test Data
| Test Input | Flaw Description | Expected Result |
| ---------- | ---------------- | --------------- |
| `3000123456789` | 13 digits (Too short) | Rejected |
| `3000123456789012` | 16 digits (Too long) | Rejected |
| `100012345678903` | Starts with 1 instead of 3 | Rejected |
| `300012345678905` | Ends with 5 instead of 3 | Rejected |
| `300012345ABCD03` | Contains non-numeric characters | Rejected |

# Preconditions
1. Company lessor is on the "Billing Data" screen.

# Steps
1. Enter each invalid tax number from the test data table into the tax number input.
2. Tap **Save** (`حفظ`).
3. Observe form response, error indicators, and field state.

# Expected Result
1. Every invalid input is rejected with an input format validation error.
2. The system enforces that any non-empty tax number must be exactly 15 numeric digits, starting with 3 and ending with 3.
3. No invalid tax number is written to the database.

# Notes
- Requirement: UF-47 Error Flow E1 ("Number is not 15 digits or does not start and end with 3 -> Not accepted").

# Attachments

# Script

---
*Last Updated: 2026-10-21 14:40*
