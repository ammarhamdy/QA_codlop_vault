---
tc_id: TC-RENT-009
title: Verify System Blocks Fractional Decimal Values for Base Price
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
| `150.50` | Decimal with halalas | `«السعر بالريال من 1 إلى 100,000 بدون كسور»` |
| `999.99` | Decimal with halalas | `«السعر بالريال من 1 إلى 100,000 بدون كسور»` |

# Preconditions
1. Lessor is on the Base Prices step.

# Steps
1. Enter `150.50` into the base price field.
2. Tap **Save**.
3. Observe validation response.
4. Enter `999.99` and tap **Save**.
5. Observe validation response.

# Expected Result
1. Fractional/decimal price inputs are strictly rejected.
2. The exact error message is presented: `«السعر بالريال من 1 إلى 100,000 بدون كسور»`.
3. Only whole integer numbers in SAR are accepted.

# Notes
- Requirement: UF-65 Error Flow E1 ("Price is 0, negative, fractional, or above the limit -> «السعر بالريال من 1 إلى 100,000 بدون كسور»").

# Attachments

# Script

---
*Last Updated: 2026-10-22 13:55*
