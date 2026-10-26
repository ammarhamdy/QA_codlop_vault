---
tc_id: TC-ACPT-023
title: Reject Booking - Rejection Permitted Under Expired Subscription or Suspended Ad
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Accepting-Bookings.md
tags:
  - test-case
---

# Test Data
| Lessor Account / Ad State | Rejection Action Allowed |
| ------------------------- | ------------------------ |
| Subscription Expired | Yes |
| Ad Disabled | Yes |
| Ad Suspended | Yes |

# Preconditions
1. A booking was initiated while the lessor was active.
2. Prior to rejection, the lessor's package expires or the chalet ad is disabled/suspended.
3. The booking is in "Awaiting Lessor Confirmation".

# Steps
1. Log in as the lessor under the expired or suspended condition.
2. Open the pending booking.
3. Tap **"Reject"**, select a reason, and confirm submission.

# Expected Result
1. The system permits the lessor to reject the booking without restriction.
2. The booking updates to "Rejected" and the slot is released within 1 minute.
3. The customer is properly notified.

# Notes
- Requirement: UF-06 (Alternative Flow A2: "Subscription expired, ad disabled, or ad suspended -> The lessor can still reject").

# Attachments

# Script

---
*Last Updated: 2026-10-26 15:35*
