---
tc_id: TC-ACPT-009
title: My Places Bookings - Cancelled Tab Displays All Cancellation Types with Distinct Badges
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Accepting-Bookings.md
tags:
  - test-case
---

# Test Data
| Booking Record | Cancellation Reason / Type | Expected Badge in "Cancelled" Tab |
| -------------- | -------------------------- | --------------------------------- |
| Booking #C1 | Cancelled by Customer (Customer initiated) | `ملغي من العميل` (Cancelled by Customer) |
| Booking #C2 | Cancelled by Mutual Agreement | `ملغي بالاتفاق` (Cancelled by Agreement) |
| Booking #C3 | Cancelled Administratively (By Support/Admin) | `ملغي إدارياً` (Administratively Cancelled) |

# Preconditions
1. Lessor has bookings that were cancelled via each of the three mechanisms.
2. Lessor is logged in and navigates to "My Places' Bookings" (`حجوزات أماكني`).

# Steps
1. Tap the **"Cancelled"** (`الملغية`) tab.
2. Review the list of cancelled bookings displayed.
3. Verify the status badges rendered for each booking.

# Expected Result
1. The "Cancelled" tab aggregates all cancelled bookings in a single unified list.
2. Each item clearly displays a distinguishing badge differentiating whether the cancellation was:
   - Initiated by the customer.
   - Performed by mutual agreement.
   - Enacted administratively by platform support.

# Notes
- Requirement: UF-80 (Notes - open questions: "Does the 'Cancelled' tab include cancelled by customer, by agreement, and administratively? ALL status and distinct them by badges").

# Attachments

# Script

---
*Last Updated: 2026-10-26 15:35*
