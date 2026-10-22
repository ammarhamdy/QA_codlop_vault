---
tc_id: TC-SUB-017
title: Verify Accuracy of Subscription Upgrade Price Calculation Formula
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Package-and-Payment-Method/Subscription-Expires-and-Ads-Are-Hidden.md
tags:
  - test-case
---

# Test Data
| Formula Parameter | Scenario 1 (Whole Number) | Scenario 2 (Fractional Halalas Rounding) |
| ----------------- | ------------------------- | --------------------------------------- |
| Current Package Full Price | 300.00 SAR | 350.00 SAR |
| Current Duration | 30 days | 30 days |
| Remaining Days (including today) | 15 days | 7 days |
| Current Remaining Value | `(300 / 30) * 15 = 150.00 SAR` | `(350 / 30) * 7 = 81.666... -> 81.67 SAR` |
| New Package Full Price | 600.00 SAR | 700.00 SAR |
| Calculated Payable Amount | `600.00 - 150.00 = 450.00 SAR` | `700.00 - 81.67 = 618.33 SAR` |

# Preconditions
1. Lessor is actively subscribed under Scenario 1 or Scenario 2 parameters.
2. Lessor selects the higher package for upgrade.

# Steps
1. Initiate upgrade calculation for Scenario 1.
2. Verify calculated credit deduction and required payable amount.
3. Initiate upgrade calculation for Scenario 2 (with fractional division).
4. Verify rounding to nearest halala (half up).
5. Create the payment request `PAY-YYYY-NNNNNN`.
6. Inspect the fixed amount stored in the created payment request.

# Expected Result
1. The calculation strictly executes the documented formula:
   `Amount = New Full Price - (Current Price / Current Duration * Remaining Days)`
2. Remaining days include today through the scheduled end date.
3. Fractional amounts are correctly rounded to two decimal places (nearest halala, half up).
4. The calculated amount is locked and fixed at request creation.

# Notes
- Requirement: UF-60 Notes & Alternative Flows A1 & A2.

# Attachments

# Script

---
*Last Updated: 2026-10-21 15:50*
