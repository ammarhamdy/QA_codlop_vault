---
tc_id: TC-DSP-006
title: Verify Dispute Creation Is Strictly Disallowed on Timed-Out Bookings
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Disputes/Disputes.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Booking Reference | `BKG-2026-000806` |
| Booking Status | `Timed Out` (`منتهي المهلة` - Expired temporary booking without receipt) |

# Preconditions
1. Booking `BKG-2026-000806` has status "Timed Out" (`منتهي المهلة`) because the temporary countdown expired without any transfer receipt being uploaded.
2. Customer is authenticated and views the expired booking in "My Bookings".

# Steps
1. Open the booking details for `BKG-2026-000806`.
2. Inspect available action buttons on the screen.
3. Verify whether "Open Dispute" (`فتح نزاع`) is displayed or hidden.
4. Attempt to trigger dispute creation via direct API endpoint: `POST /api/disputes` with booking ID `BKG-2026-000806`.

# Expected Result
1. The "Open Dispute" action is not available on timed-out bookings.
2. Direct API submission is rejected with an HTTP 422 / 400 error indicating that disputes cannot be raised on bookings with status "Timed Out".
3. No dispute record is created.

# Notes
- Requirement: UF-08 Preconditions and Error Flow E5 ("Booking status is 'Timed Out': Dispute is not allowed").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:00*
