---
tc_id: TC-BKG-068
title: Verify Booking Remains in Booked Status and Cannot Be Cancelled Directly by Lessor
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Booking/Lessor-Cancellation-Cycle.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Booking Reference | `BKG-2026-000708` |
| Current Status | `Booked` (`محجوز`) |

# Preconditions
1. Booking `BKG-2026-000708` is in "Booked" status.
2. Lessor has submitted a cancellation request with status "Open".

# Steps
1. Inspect the booking status field for `BKG-2026-000708` in customer app, lessor app, and database.
2. Verify if the lessor interface provides any direct "Cancel Booking" button (without customer consent).
3. Attempt to call any direct cancellation endpoints as lessor: `POST /api/bookings/BKG-2026-000708/cancel`.
4. As another customer, check the chalet calendar to verify if the slot remains blocked.

# Expected Result
1. The booking status remains strictly **"Booked"** (`محجوز`) while the cancellation request is Open.
2. The platform provides NO mechanism for a lessor to unilaterally or directly cancel a confirmed booking.
3. Direct cancellation API calls from the lessor are blocked/rejected.
4. The chalet slot remains blocked and unbookable for all other users.
5. Only an accepted cancellation request by the customer can transition the booking to "Cancelled by Agreement".

# Notes
- Requirement: UF-09 Goal and Notes ("since the lessor cannot cancel it directly. Only an accepted request cancels the booking. Every other outcome leaves it confirmed").

# Attachments

# Script

---
*Last Updated: 2026-10-18 15:00*
