---
tc_id: TC-PKG-006
title: Verify Bank Transfer Instructions Display Platform Accounts and PAY Reference
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Package-and-Payment-Method/Package-and-Payment-Method.md
tags:
  - test-case
---

# Test Data
| Field | Expected Content |
| ----- | ---------------- |
| Bank Name | Official Platform Bank Name (e.g., Al Rajhi Bank) |
| Beneficiary Name | Official Platform Commercial Name |
| IBAN | Valid SA IBAN with dedicated copy icon button |
| Amount | Exact package price (e.g., 500.00 SAR) |
| Transfer Description Note | Reference to write `PAY-YYYY-NNNNNN` in bank transfer description |

# Preconditions
1. Lessor has selected a package with Bank Transfer as payment method.
2. Payment request `PAY-2026-000102` is in `Awaiting Payment` status.

# Steps
1. Open the bank transfer step for payment request `PAY-2026-000102`.
2. Review the displayed platform bank details.
3. Tap the copy icon next to the IBAN.
4. Verify the transfer description instruction instructions.

# Expected Result
1. The screen clearly displays:
   - Platform bank name.
   - Beneficiary commercial name.
   - Full IBAN number.
   - Exact required transfer amount.
   - The unique reference number `PAY-2026-000102` with explicit instruction to include it in the bank transfer remarks/description.
2. Tapping the copy icon copies the IBAN directly to the device clipboard.
3. No lessor-owned bank accounts are shown in this path (strictly platform accounts only).

# Notes
- Requirement: UF-43 Main Flow Step 1 & Notes.

# Attachments

# Script

---
*Last Updated: 2026-10-21 14:40*
