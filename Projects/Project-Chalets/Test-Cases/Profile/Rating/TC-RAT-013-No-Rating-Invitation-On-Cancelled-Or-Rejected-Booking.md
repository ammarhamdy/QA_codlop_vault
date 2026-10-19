---
tc_id: TC-RAT-013
title: Verify Cancelled or Rejected Bookings Receive No Rating Invitation or Rating Option
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Customer-Profile/Rating.md
tags:
  - test-case
---

# Test Data
| Booking Scenario | Booking ID | Booking Final Status |
| ---------------- | ---------- | -------------------- |
| Lessor Rejection | `BK-7713-A` | `Rejected` (`مرفوض`) |
| Client Cancellation | `BK-7713-B` | `Cancelled` (`ملغي`) |
| Lessor Cancellation | `BK-7713-C` | `Cancelled` (`ملغي`) |

# Preconditions
1. Customer has three distinct bookings: `BK-7713-A`, `BK-7713-B`, and `BK-7713-C`.
2. None of these bookings progressed to an actual stay.
3. The scheduled stay dates/times have passed.

# Steps
1. Monitor system push notifications and messaging inbox for any rating prompts associated with these bookings.
2. Open the customer app and navigate to "My Bookings" -> "Cancelled Bookings" (`الحجوزات الملغية والمرفوضة`).
3. Open booking details for `BK-7713-A`.
4. Open booking details for `BK-7713-B`.
5. Open booking details for `BK-7713-C`.
6. Inspect available action buttons on all three screens.

# Expected Result
1. No rating invitation notification is ever sent for any cancelled or rejected bookings.
2. The booking details screen does NOT display a **"Rate Your Stay"** (`قيّم إقامتك`) button.
3. Ratings are strictly restricted to customers who actually completed their stay.

# Notes
- Requirement: UF-14 Alternative Flow E4 ("Booking is cancelled or rejected -> No invitation and no rating button").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:30*
