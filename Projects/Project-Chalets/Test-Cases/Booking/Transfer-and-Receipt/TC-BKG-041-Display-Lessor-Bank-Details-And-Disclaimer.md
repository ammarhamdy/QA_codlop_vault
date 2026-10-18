---
tc_id: TC-BKG-041
title: Verify Display of Lessor Bank Details, Booking Reference, and Platform Disclaimer
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Booking/Transfer-and-Receipt-Cycle.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Booking Reference | `BKG-2026-000601` |
| Beneficiary Name | `سلطان فهد الشمري` |
| Bank Name | `مصرف الراجحي` (Al Rajhi Bank) |
| IBAN | `SA4480000123608010123456` |
| Required Amount | `1,200 SAR` |
| Expected Notice | `التحويل يتم مباشرة لحساب المؤجّر، والمنصة ليست طرفًا في الدفع أو الاسترداد` |

# Preconditions
1. Customer has created a temporary booking `BKG-2026-000601` with an active 2-hour countdown timer.
2. Lessor bank account details are verified and saved in the booking snapshot.
3. Customer is authenticated and navigated to the payment instructions screen.

# Steps
1. Open the active temporary booking screen for `BKG-2026-000601`.
2. Inspect the payment instructions section.
3. Verify the displayed lessor bank details: Beneficiary Name, Bank Name, and IBAN.
4. Verify the required amount matches the total booking cost (`1,200 SAR`).
5. Verify the booking reference (`BKG-2026-000601`) is prominently displayed as the transfer description identifier.
6. Verify the legal disclaimer notice regarding direct transfer and platform neutrality.

# Expected Result
1. The lessor's bank details (Beneficiary: `سلطان فهد الشمري`, Bank: `مصرف الراجحي`, IBAN: `SA4480000123608010123456`) are clearly presented with one-tap copy buttons.
2. The exact required amount (`1,200 SAR`) and booking reference (`BKG-2026-000601`) are shown with clear instructions to include the reference in the transfer remarks.
3. The platform disclaimer notice is visibly displayed: the transfer goes directly to the lessor and the platform is not an intermediary or party to payment or refunds.

# Notes
- Requirement: UF-02 Main Flow Steps 1–3.

# Attachments

# Script

---
*Last Updated: 2026-10-18 14:35*
