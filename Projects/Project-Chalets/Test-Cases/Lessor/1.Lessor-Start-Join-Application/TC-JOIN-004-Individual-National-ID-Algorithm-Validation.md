---
tc_id: TC-JOIN-004
title: Verify System Blocks Saudi National ID That Fails Algorithmic Verification
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Start-Join-Application.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Invalid National ID | `1111111111` (Starts with 1, 10 digits, fails Luhn/checksum check) |
| Expected Error Message | `«رقم الهوية غير صحيح»` |

# Preconditions
1. User is on the Individual applicant form.

# Steps
1. In the National ID input, enter `1111111111`.
2. Move focus away from the field or tap Next.
3. Observe the validation response.

# Expected Result
1. The system verifies the National ID against the official Saudi ID verification/checksum algorithm.
2. Because the checksum is mathematically invalid, the input is rejected.
3. The exact Arabic validation message is displayed: `«رقم الهوية غير صحيح»`.
4. Progress to the next step remains blocked.

# Notes
- Requirement: UF-28 Error Flow E2.

# Attachments

# Script

---
*Last Updated: 2026-10-22 10:55*
