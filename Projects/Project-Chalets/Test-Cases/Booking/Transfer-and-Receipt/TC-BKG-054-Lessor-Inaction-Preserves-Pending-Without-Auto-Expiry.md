---
tc_id: TC-BKG-054
title: Verify Booking Remains in Awaiting Lessor Confirmation Indefinitely Without Auto-Expiry
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Booking/Transfer-and-Receipt-Cycle.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Booking Reference | `BKG-2026-000616` |
| Initial Status | `Awaiting Lessor Confirmation` (`بانتظار تأكيد المؤجّر`) |
| Inaction Periods | 24 Hours, 48 Hours, 72 Hours |

# Preconditions
1. Customer has uploaded a valid transfer receipt for `BKG-2026-000616`.
2. Booking status transitioned to "Awaiting Lessor Confirmation".
3. The lessor has taken no action (neither confirmed nor rejected).

# Steps
1. Advance system time by 24 hours without any response from the lessor.
2. Verify the booking status and slot reservation.
3. Advance system time past 48 and 72 hours.
4. Verify whether any automated expiration job cancels or expires the booking.
5. In another client session, check if the slot is still blocked.

# Expected Result
1. The booking status remains strictly **"Awaiting Lessor Confirmation"**.
2. The booking **never** expires or cancels automatically, protecting payments the customer may have already transferred.
3. The reserved slot remains locked and blocked from being booked by other users.

# Notes
- Requirement: UF-04 Alternative Flow A2 ("Lessor does not respond: Status stays 'Awaiting Lessor Confirmation'. It never expires automatically and the slot stays reserved").

# Attachments

# Script

---
*Last Updated: 2026-10-18 14:35*
