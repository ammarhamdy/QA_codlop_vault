---
tc_id: TC-BKG-050
title: Verify Required Amount Remains Fixed to Price Snapshot Despite Post-Creation Lessor Rate Changes
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
| Booking Reference | `BKG-2026-000610` |
| Initial Price at Creation | `1,000 SAR` |
| Updated Lessor Listing Price | `1,400 SAR` (changed after booking created) |

# Preconditions
1. Customer created temporary booking `BKG-2026-000610` when chalet price was `1,000 SAR`.
2. Booking status is "Temporary".
3. Lessor logs into lessor dashboard and raises the slot price to `1,400 SAR`.

# Steps
1. As Lessor, update the price of the chalet slot to `1,400 SAR`.
2. As Customer, open booking `BKG-2026-000610` on the transfer instructions screen.
3. Verify the required transfer amount displayed to the customer.
4. Upload receipt and proceed with submission.
5. In lessor notification and booking view, verify the transfer amount requested from the customer.

# Expected Result
1. The required transfer amount on the active booking remains strictly `1,000 SAR` (the price snapshot captured at creation time).
2. The subsequent price change made by the lessor does not overwrite or retroactively inflate the price of the active temporary booking.
3. The lessor notification and booking details correctly reflect `1,000 SAR` as the required transfer amount.

# Notes
- Requirement: UF-02 Alternative Flow A2 ("Lessor changed the price after the booking was created: Required amount stays as the price saved at creation").

# Attachments

# Script

---
*Last Updated: 2026-10-18 14:35*
