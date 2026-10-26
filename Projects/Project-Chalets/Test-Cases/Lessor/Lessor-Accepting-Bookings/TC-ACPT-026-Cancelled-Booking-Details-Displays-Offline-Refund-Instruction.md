---
tc_id: TC-ACPT-026
title: Cancelled Booking Details Displays Offline Refund Instruction to Lessor
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Accepting-Bookings.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Booking ID | `BKG-5012` |
| Calculated Refund Due | `1,000` |
| Expected Instruction Banner | `يستحق العميل 1,000 ر.س حسب سياستك — ردّه خارج المنصة` |

# Preconditions
1. Customer has cancelled confirmed booking `BKG-5012`.
2. Refund calculation per saved policy establishes 1,000 SAR is due to the customer.

# Steps
1. As the lessor, open "My Places' Bookings" -> "Cancelled".
2. Select booking `BKG-5012`.
3. Inspect the booking summary banner and financial breakdown.

# Expected Result
1. The screen displays the clear informational prompt: `يستحق العميل 1,000 ر.س حسب سياستك — ردّه خارج المنصة`.
2. The UI clarifies that the platform does not hold, debit, or transfer money; the refund must be executed directly by the lessor outside the platform.

# Notes
- Requirement: UF-81 (Main Flow Steps 3 & 4).

# Attachments

# Script

---
*Last Updated: 2026-10-26 15:35*
