---
tc_id: TC-RENT-010
title: Verify System Blocks Base Price Exceeding Maximum Limit
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Rental-System-and-Working-Days.md
tags:
  - test-case
---

# Test Data
| Test Input | Input Description | Expected System Error |
| ---------- | ----------------- | --------------------- |
| `100,000` | Exact Maximum Limit | Valid / Accepted |
| `100,001` | Exceeds Maximum by 1 SAR | `«السعر بالريال من 1 إلى 100,000 بدون كسور»` |
| `250,000` | Above Maximum Limit | `«السعر بالريال من 1 إلى 100,000 بدون كسور»` |

# Preconditions
1. Default price limit setting is active (Min: 1, Max: 100,000 SAR).
2. Lessor is on the Base Prices step.

# Steps
1. Enter `100000` into the base price field and tap **Save**; verify acceptance.
2. Enter `100001` into the base price field.
3. Tap **Save**.
4. Observe validation response.

# Expected Result
1. The exact boundary of 100,000 SAR is accepted.
2. Any price greater than 100,000 SAR is rejected with the message:
   `«السعر بالريال من 1 إلى 100,000 بدون كسور»`.

# Notes
- Requirement: UF-65 Error Flow E1.

# Attachments

# Script

---
*Last Updated: 2026-10-22 13:55*
