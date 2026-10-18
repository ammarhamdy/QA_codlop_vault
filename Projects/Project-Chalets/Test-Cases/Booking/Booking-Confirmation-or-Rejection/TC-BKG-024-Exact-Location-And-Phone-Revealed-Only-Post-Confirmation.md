---
tc_id: TC-BKG-024
title: Verify Exact Location and Lessor Phone Number Are Hidden Until Confirmation
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
| Booking Reference | `BKG-2026-000504` |
| Chalet Name | `شاليه المروج` |
| Exact Map Coordinates | `24.7136, 46.6753` (Hidden pre-confirmation) |
| Lessor Phone Number | `0551234567` (Hidden pre-confirmation) |
| Approximate Location | `الرياض - حي الرمال` (Shown pre-confirmation) |

# Preconditions
1. Customer has submitted a booking `BKG-2026-000504` which is currently in status "Awaiting Lessor Confirmation".
2. Customer is logged in to the customer mobile app.
3. Lessor is logged in to the lessor management app.

# Steps
1. As the Customer, open the booking details screen for `BKG-2026-000504` prior to confirmation.
2. Verify whether exact map pin / coordinates and lessor phone number are displayed.
3. Intercept or inspect the customer API response for this booking and verify that exact coordinates and lessor phone number are omitted or masked.
4. As the Lessor, tap **"Confirm"** (`تأكيد`) to confirm the booking.
5. As the Customer, refresh or re-open the booking details screen.
6. Verify whether exact coordinates, direct navigation/map link, and lessor phone number are now revealed.

# Expected Result
1. Before confirmation, the exact place location and lessor phone number are strictly hidden from the customer (only approximate area/neighborhood is shown).
2. After the lessor confirms the booking, the status becomes "Booked" and the system immediately reveals the exact location and lessor phone number (`0551234567`).
3. Under no circumstances are contact details or exact location exposed while status is "Awaiting Lessor Confirmation" or "Temporary".

# Notes
- Requirement: UF-04 Step 6 and Notes ("Location and phone are hidden before this point. They appear only after confirmation").

# Attachments

# Script

---
*Last Updated: 2026-10-18 12:15*
