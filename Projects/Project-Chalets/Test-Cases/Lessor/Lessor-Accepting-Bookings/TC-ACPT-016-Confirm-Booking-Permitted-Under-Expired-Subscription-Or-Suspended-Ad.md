---
tc_id: TC-ACPT-016
title: Confirm Booking - Confirmation Permitted Under Expired Subscription or Suspended Ad
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Accepting-Bookings.md
tags:
  - test-case
---

# Test Data
| Lessor Account / Ad State | Confirmation Action Allowed |
| ------------------------- | --------------------------- |
| Lessor Subscription Expired | Yes |
| Chalet Ad Disabled | Yes |
| Chalet Ad Suspended | Yes |

# Preconditions
1. A booking was initiated while the lessor was active.
2. Prior to confirmation, the lessor's package expires or the chalet ad is disabled/suspended.
3. The booking is in "Awaiting Lessor Confirmation".

# Steps
1. Log in as the lessor under the expired/suspended condition.
2. Open the pending booking details.
3. Tap **"Confirm Amount Received"**.
4. Confirm the prompt in the dialog.

# Expected Result
1. The system allows the lessor to confirm the booking despite the expired subscription or suspended ad.
2. The booking successfully converts to "Booked".
3. Customer notifications are sent, and the booked date is locked on the calendar.

# Notes
- Requirement: UF-04 (Alternative Flow A1: "Subscription expired, ad disabled, or ad suspended -> The lessor can still confirm the pending booking").

# Attachments

# Script

---
*Last Updated: 2026-10-26 15:35*
