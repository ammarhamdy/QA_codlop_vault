---
tc_id: TC-BKG-032
title: Verify Slot Is Released and Becomes Available Within One Minute of Rejection
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
| Booking Reference | `BKG-2026-000516` |
| Chalet Name | `شاليه النجوم` |
| Slot Date | `2026-11-28` |
| Rejection Reason | `المبلغ لم يصل` |
| Maximum Release SLA | `<= 1 Minute` (60 seconds) |

# Preconditions
1. Booking `BKG-2026-000516` is holding the slot on `2026-11-28`.
2. A second customer is prepared to query and book `2026-11-28` for `شاليه النجوم`.

# Steps
1. As the Lessor, reject booking `BKG-2026-000516` with reason "المبلغ لم يصل".
2. Confirm the rejection at timestamp `T0`.
3. In the second customer session, query the place availability and attempt to book `2026-11-28` at:
   - `T0 + 15 seconds`
   - `T0 + 30 seconds`
   - `T0 + 60 seconds`

# Expected Result
1. The booking status updates to "Rejected" (`مرفوض`) immediately at `T0`.
2. The slot for `2026-11-28` is released and becomes fully bookable again within 1 minute (by `T0 + 60 seconds` at the latest).
3. The second customer is able to successfully select and temporarily book the newly released slot.

# Notes
- Requirement: UF-06 Step 5 and Notes ("Releases the slot within 1 minute. The slot is released, so another customer may book it").

# Attachments

# Script

---
*Last Updated: 2026-10-18 12:15*
