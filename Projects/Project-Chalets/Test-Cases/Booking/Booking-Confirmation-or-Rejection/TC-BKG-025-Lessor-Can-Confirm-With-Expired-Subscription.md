---
tc_id: TC-BKG-025
title: Verify Lessor Can Confirm Pending Booking Even When Lessor Subscription Has Expired
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Booking/Booking-Confirmation-or-Rejection-Cycle.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Booking Reference | `BKG-2026-000505` |
| Lessor Account Status | Active Account, Subscription: `Expired` (`منتهي الاشتراك`) |
| Booking Status | `Awaiting Lessor Confirmation` |

# Preconditions
1. Lessor's commercial subscription package on the platform expired yesterday.
2. Chalet listings owned by this lessor are currently hidden or unsearchable for new bookings due to subscription expiry.
3. Booking `BKG-2026-000505` was initiated and receipt was uploaded before or during the expiration transition, and is currently in "Awaiting Lessor Confirmation".

# Steps
1. Log in to the lessor portal with the expired-subscription lessor credentials.
2. Navigate to pending bookings / confirmation requests.
3. Open booking `BKG-2026-000505`.
4. Inspect action buttons on the booking details view.
5. Tap **"Confirm"** (`تأكيد`) and confirm the prompt.

# Expected Result
1. The platform permits the lessor to view and interact with the pending booking despite having an expired subscription.
2. The "Confirm" button is enabled and functional.
3. The booking status successfully updates to "Booked" (`محجوز`).
4. Notifications are sent and calendar slot is blocked normally.

# Notes
- Requirement: UF-04 Alternative Flow A1 ("Lessor's subscription has expired: Lessor can still confirm the pending booking") and UF-07 Flow A2.

# Attachments

# Script

---
*Last Updated: 2026-10-18 12:15*
