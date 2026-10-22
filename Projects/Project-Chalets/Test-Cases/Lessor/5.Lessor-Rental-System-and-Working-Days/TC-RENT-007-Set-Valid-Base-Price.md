---
tc_id: TC-RENT-007
title: Verify Setting Valid Whole-Number Base Price for Chalet
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Rental-System-and-Working-Days.md
tags:
  - test-case
---

# Test Data
| Field | Value | Constraints |
| ----- | ----- | ----------- |
| Base Price | `1,250` SAR | Whole number, 1 to 100,000 |
| Currency | SAR (`ر.س`) | Saudi Riyal |
| Unit Type | Full Day (`يوم كامل`) | Single unit type |

# Preconditions
1. Full Day times and working days are configured for the chalet (UF-64).
2. Lessor opens the Base Prices step (Step 6 of ad editor or published ad settings).

# Steps
1. Enter `1250` into the Base Price field.
2. Tap **Save** (`حفظ السعر`).
3. Open public place details for the chalet.
4. Verify the displayed price on the public card.

# Expected Result
1. The base price of 1,250 SAR is validated and saved.
2. For a published chalet, the price changes immediately without requiring review.
3. Customers see the formatted price: `«1,250 ر.س»` per full day.

# Notes
- Requirement: UF-65 Main Flow Steps 1 to 3.

# Attachments

# Script

---
*Last Updated: 2026-10-22 13:55*
