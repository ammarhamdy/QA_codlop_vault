---
tc_id: TC-BKG-036
title: Verify Support Team Alerted and Booking Added to Late Confirmation List After 24 Hours
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
| Booking Reference | `BKG-2026-000522` |
| Receipt Upload Timestamp | `2026-10-18 10:00:00` |
| Full Window Elapsed | `24 Hours` (`2026-10-19 10:00:00`) |
| Support Alert Category | Late Confirmation / تأخر التأكيد |

# Preconditions
1. Customer uploaded receipt for `BKG-2026-000522` at `2026-10-18 10:00:00`.
2. Lessor has taken no action (neither confirmed nor rejected) for 24 hours.
3. No dispute is open.

# Steps
1. Advance system time to `2026-10-19 10:00:01` (24 hours after receipt upload).
2. Inspect support dashboard and system alert channels.
3. Check the admin "Late Confirmation" (`متأخرة التأكيد`) queue/list.
4. Check the customer app and lessor app for booking `BKG-2026-000522`.
5. Verify whether the booking was automatically cancelled or remains active.

# Expected Result
1. The support team receives an automated alert regarding the delayed decision.
2. Booking `BKG-2026-000522` is automatically added to the "Late Confirmation" (`متأخرة التأكيد`) list for support intervention.
3. The booking is **not** cancelled automatically under any circumstances (the customer may have already paid).
4. Status remains "Awaiting Lessor Confirmation".

# Notes
- Requirement: UF-07 Steps 2–3 and Error Flow E2 ("Window ends with no decision: Booking is not cancelled automatically").

# Attachments

# Script

---
*Last Updated: 2026-10-18 12:15*
