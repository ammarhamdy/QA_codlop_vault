---
tc_id: TC-ACPT-008
title: Booking Management Access Under Expired Subscription or Suspended Ad
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Accepting-Bookings.md
tags:
  - test-case
---

# Test Data
| Lessor Account / Ad State | Expected Booking Reception Access |
| ------------------------- | --------------------------------- |
| Lessor Subscription Expired | Can view, open, confirm, or reject existing pending bookings |
| Chalet Ad Disabled | Can view, open, confirm, or reject existing pending bookings |
| Chalet Ad Suspended | Can view, open, confirm, or reject existing pending bookings |

# Preconditions
1. Lessor has a pending booking awaiting confirmation.
2. The lessor's platform subscription expires, or the specific chalet ad is disabled/suspended.

# Steps
1. Log in as the lessor whose subscription has expired or whose ad is suspended.
2. Open the dashboard and check the `حجوزات بانتظار تأكيدك` card.
3. Open "My Places' Bookings" and tap the pending booking.
4. Verify whether the booking details, receipt, and action buttons are accessible.

# Expected Result
1. The system permits the lessor to fully view, track, and process existing pending bookings regardless of subscription expiry, ad disablement, or suspension.
2. The lessor is not locked out of managing their active financial commitments and customer reservations.

# Notes
- Requirement: UF-80 (Alternative Flow A3), UF-04 (Alternative Flow A1), UF-06 (Alternative Flow A2).

# Attachments

# Script

---
*Last Updated: 2026-10-26 15:35*
