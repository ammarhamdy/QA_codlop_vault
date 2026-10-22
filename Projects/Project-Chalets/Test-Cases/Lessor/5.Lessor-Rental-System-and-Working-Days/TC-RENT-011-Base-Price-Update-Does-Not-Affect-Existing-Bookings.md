---
tc_id: TC-RENT-011
title: Verify Base Price Update Preserves Fixed Price on Existing App Bookings
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Rental-System-and-Working-Days.md
tags:
  - test-case
---

# Test Data
| Booking Scenario | Booking ID | Booking Creation Price | Updated Base Price | Expected Contracted Price |
| ---------------- | ---------- | ---------------------- | ------------------ | ------------------------- |
| Existing Temporary Booking | `BK-601` | 1,000 SAR | 1,500 SAR | Preserves 1,000 SAR |
| Existing Confirmed Booking | `BK-602` | 1,000 SAR | 1,500 SAR | Preserves 1,000 SAR |
| New Booking Attempt | `BK-603` | N/A | 1,500 SAR | Charged 1,500 SAR |

# Preconditions
1. Chalet has existing temporary booking `BK-601` and confirmed booking `BK-602` booked at base price 1,000 SAR.
2. Lessor opens price settings and increases base price to 1,500 SAR.

# Steps
1. As lessor, change base price to 1,500 SAR and save.
2. In client app, view booking details for existing booking `BK-601`.
3. View booking details for existing booking `BK-602`.
4. As another customer, select the chalet for an upcoming unbooked date and proceed to checkout (`BK-603`).

# Expected Result
1. Existing bookings (`BK-601` and `BK-602`) retain their fixed contracted price of 1,000 SAR; no retroactive price hike is applied.
2. New booking `BK-603` is calculated and invoiced at the new price of 1,500 SAR.

# Notes
- Requirement: UF-65 Alternative Flow A2 ("Existing bookings keep the price fixed at temporary booking. The new price applies to new bookings only").

# Attachments

# Script

---
*Last Updated: 2026-10-22 13:55*
