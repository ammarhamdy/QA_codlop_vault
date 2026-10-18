---
tc_id: TC-BKG-028
title: Verify Unauthorized User or Different Lessor Cannot Confirm or Reject Booking
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Booking/Booking-Confirmation-or-Rejection-Cycle.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Booking Reference | `BKG-2026-000508` (Belongs to Lessor A) |
| User 1 (Attacker) | Customer Account (Not a Lessor) |
| User 2 (Attacker) | Lessor B (Owner of a different chalet) |
| User 3 (Attacker) | Unauthenticated / Guest Request |

# Preconditions
1. Booking `BKG-2026-000508` is created for Chalet A owned exclusively by Lessor A, in status "Awaiting Lessor Confirmation".
2. Direct API endpoints for confirm (`/api/bookings/{id}/confirm`) and reject (`/api/bookings/{id}/reject`) are accessible via authenticated requests.

# Steps
1. As User 1 (Customer), attempt to call the Confirm API and Reject API for `BKG-2026-000508`.
2. As User 2 (Lessor B), attempt to call the Confirm API and Reject API for `BKG-2026-000508`.
3. As User 3 (Guest / Unauthenticated), attempt to call the Confirm API and Reject API without authorization headers.
4. Verify HTTP status codes, error payloads, and database status of `BKG-2026-000508`.

# Expected Result
1. All unauthorized attempts are rejected with `401 Unauthorized` or `403 Forbidden`.
2. Customer (User 1) cannot execute lessor decision endpoints on their own booking or any other booking.
3. Lessor B (User 2) cannot confirm or reject bookings that belong to Lessor A's property.
4. Guest requests (User 3) are rejected immediately due to missing authentication.
5. Booking `BKG-2026-000508` remains unaltered in status "Awaiting Lessor Confirmation".

# Notes
- Requirement: Actor permissions for UF-04 ("Actor: Lessor") and UF-06 ("Actor: Lessor").

# Attachments

# Script

---
*Last Updated: 2026-10-18 12:15*
