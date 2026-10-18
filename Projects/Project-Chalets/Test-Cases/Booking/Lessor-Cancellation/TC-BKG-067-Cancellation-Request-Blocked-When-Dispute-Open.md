---
tc_id: TC-BKG-067
title: Verify Lessor Cancellation Request Is Blocked When an Active Dispute Exists on Booking
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
| Booking Reference | `BKG-2026-000707` |
| Active Dispute Reference | `DSP-2026-000077` (Status: Open / Under Investigation) |

# Preconditions
1. Booking `BKG-2026-000707` has status "Booked".
2. An active dispute (`DSP-2026-000077`) is open on this booking.
3. Lessor is logged in to the lessor portal.

# Steps
1. Navigate to booking `BKG-2026-000707` on the lessor portal.
2. Inspect the action buttons on the booking details screen.
3. Attempt to click "Request Cancellation" if displayed.
4. Attempt to send a cancellation request creation payload via direct API endpoint.

# Expected Result
1. The "Request Cancellation" button is disabled or hidden while an active dispute exists.
2. Direct API invocation is blocked with a validation error indicating that cancellation requests cannot be created while a dispute is under review.
3. No cancellation request record is created in the database.

# Notes
- Requirement: UF-09 Error Flow E4 ("A dispute is open on the booking: Request cannot be created").

# Attachments

# Script

---
*Last Updated: 2026-10-18 15:00*
