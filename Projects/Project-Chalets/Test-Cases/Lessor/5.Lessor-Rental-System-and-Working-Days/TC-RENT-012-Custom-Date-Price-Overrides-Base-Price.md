---
tc_id: TC-RENT-012
title: Verify Custom Date Price Overrides Chalet Base Price in Calendar and Checkout
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Rental-System-and-Working-Days.md
tags:
  - test-case
---

# Test Data
| Date | Base Price | Custom Price Set | Expected Display & Checkout Price |
| ---- | ---------- | ---------------- | --------------------------------- |
| Standard Day (`2026-11-10`) | 1,000 SAR | None | 1,000 SAR |
| Holiday / Weekend (`2026-11-13`) | 1,000 SAR | `2,200 SAR` | `2,200 SAR` (Custom overrides base) |

# Preconditions
1. Chalet has default base price = 1,000 SAR.
2. Lessor previously configured a custom price of 2,200 SAR for `2026-11-13` via the Calendar (UF-67).

# Steps
1. As a customer, view the chalet calendar for the month of November 2026.
2. Check the daily price displayed on `2026-11-10`.
3. Check the daily price displayed on `2026-11-13`.
4. Initiate a booking for `2026-11-13` and proceed to payment summary.

# Expected Result
1. On `2026-11-10`, the base price of 1,000 SAR is applied.
2. On `2026-11-13`, the custom price of 2,200 SAR takes precedence and overrides the base price.
3. The checkout invoice accurately charges 2,200 SAR for that stay.

# Notes
- Requirement: UF-65 Alternative Flow A1 & UF-67 Flow A1.

# Attachments

# Script

---
*Last Updated: 2026-10-22 13:55*
