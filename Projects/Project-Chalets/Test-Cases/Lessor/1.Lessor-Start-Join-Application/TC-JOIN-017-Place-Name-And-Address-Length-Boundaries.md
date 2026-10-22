---
tc_id: TC-JOIN-017
title: Verify Boundary Validations on Chalet Name and Address Length
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Start-Join-Application.md
tags:
  - test-case
---

# Test Data
| Field | Allowed Boundary | Below Minimum Test | Above Maximum Test | Valid Boundary Tests |
| ----- | ---------------- | ------------------ | ------------------ | -------------------- |
| Chalet Name | 3 to 80 chars | `شـ` (2 chars) | 81 characters string | Exactly 3 chars, Exactly 80 chars |
| Address | 5 to 200 chars | `حي1` (3 chars) | 201 characters string | Exactly 5 chars, Exactly 200 chars |

# Preconditions
1. User is on the "Add Place" form.

# Steps
1. In Chalet Name, enter 2 characters and observe validation.
2. Enter 81 characters and observe validation.
3. Enter exactly 3 characters; verify field acceptance.
4. Enter exactly 80 characters; verify field acceptance.
5. In Address, enter 4 characters and observe validation.
6. Enter 201 characters and observe validation.
7. Enter exactly 5 characters and exactly 200 characters; verify acceptance.

# Expected Result
1. Name length shorter than 3 characters or longer than 80 characters is rejected with an input length error.
2. Address length shorter than 5 characters or longer than 200 characters is rejected with an input length error.
3. Boundary values at exact limits (Name: 3 and 80; Address: 5 and 200) pass validation cleanly.

# Notes
- Requirement: UF-29 Main Flow Step 2 & Error Flow E3.

# Attachments

# Script

---
*Last Updated: 2026-10-22 10:55*
