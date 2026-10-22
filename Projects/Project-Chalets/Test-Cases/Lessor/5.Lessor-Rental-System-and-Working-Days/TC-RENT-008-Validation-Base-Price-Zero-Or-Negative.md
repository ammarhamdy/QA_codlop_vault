---
tc_id: TC-RENT-008
title: Verify System Blocks Zero or Negative Base Price Entry
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
| `0` | Zero SAR | `«السعر بالريال من 1 إلى 100,000 بدون كسور»` |
| `-500` | Negative price | `«السعر بالريال من 1 إلى 100,000 بدون كسور»` |

# Preconditions
1. Lessor is on the Base Prices step.

# Steps
1. Enter `0` into the base price input field.
2. Tap **Save**.
3. Observe validation response.
4. Enter `-500` and tap **Save**.
5. Observe validation response.

# Expected Result
1. Zero and negative price entries are rejected by validation.
2. The exact Arabic error message is displayed:
   `«السعر بالريال من 1 إلى 100,000 بدون كسور»`.
3. The price is not saved, and the form remains on the input step.

# Notes
- Requirement: UF-65 Error Flow E1.

# Attachments

# Script

---
*Last Updated: 2026-10-22 13:55*
