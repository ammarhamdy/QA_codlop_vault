---
tc_id: TC-BKG-031
title: Verify Booking Rejection Is Blocked When No Reason Is Selected
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
| Booking Reference | `BKG-2026-000515` |
| Reason Selection | None / Unselected |

# Preconditions
1. Booking `BKG-2026-000515` is in status "Awaiting Lessor Confirmation".
2. Lessor is logged in and views the booking.

# Steps
1. Tap **"Reject"** (`رفض`) to open the rejection prompt.
2. Without clicking or selecting any of the radio options (reasons list), attempt to click the "Confirm Rejection" button.
3. Attempt to submit a rejection API payload with empty or null reason: `{"reason": null}`.

# Expected Result
1. The submission button remains disabled or clicking it triggers an inline validation message indicating that a rejection reason must be selected.
2. The backend API rejects payloads lacking a valid reason with HTTP 422 / 400 Bad Request.
3. The booking status remains "Awaiting Lessor Confirmation".

# Notes
- Requirement: UF-06 Error Flow E1 ("No reason selected: Rejection blocked, reason is mandatory").

# Attachments

# Script

---
*Last Updated: 2026-10-18 12:15*
