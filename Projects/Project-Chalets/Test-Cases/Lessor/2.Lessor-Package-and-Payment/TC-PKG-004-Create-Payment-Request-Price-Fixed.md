---
tc_id: TC-PKG-004
title: Verify Payment Request Created with Fixed Price Resists Subsequent Admin Price Changes
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Package-and-Payment-Method/Package-and-Payment-Method.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Package Name | `باقة النخبة` |
| Initial Package Price | 1000 SAR |
| Updated Package Price | 1500 SAR |
| Payment Request Number Format | `PAY-YYYY-NNNNNN` |

# Preconditions
1. Package `باقة النخبة` exists with initial price 1000 SAR.
2. Lessor selects `باقة النخبة` and initiates payment request.

# Steps
1. Select `باقة النخبة` and select payment method (or proceed to bank transfer).
2. Verify creation of payment request `PAY-YYYY-NNNNNN` with status `Awaiting Payment` and amount 1000 SAR.
3. In Admin panel, change the price of `باقة النخبة` from 1000 SAR to 1500 SAR.
4. As lessor, return to the existing payment request details screen (`PAY-YYYY-NNNNNN`).
5. Verify the required payment amount displayed on the request.
6. As another lessor, open "Packages" and view `باقة النخبة`.

# Expected Result
1. The existing payment request `PAY-YYYY-NNNNNN` preserves its initial fixed amount of 1000 SAR.
2. Admin price change does NOT retroactively alter pending payment requests.
3. Any new payment request created by another lessor reflects the new price of 1500 SAR.

# Notes
- Requirement: UF-42 Alternative Flow A1 ("Admin changes the package price later -> The existing request keeps its fixed amount. The new price applies to new requests only").

# Attachments

# Script

---
*Last Updated: 2026-10-21 14:40*
