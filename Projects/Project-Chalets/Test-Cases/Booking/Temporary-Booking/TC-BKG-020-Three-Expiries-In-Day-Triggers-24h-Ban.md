---
tc_id: TC-BKG-020
title: Verify Accumulating Three Booking Expiries in One Calendar Day Triggers 24-Hour Temporary Ban
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Booking/Temporary-Booking.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Customer Account | Authenticated Client Account |
| Calendar Day | `2026-10-18` |
| Expiry #1 | `BKG-2026-000401` expires at `09:00:00` |
| Expiry #2 | `BKG-2026-000402` expires at `12:00:00` |
| Expiry #3 (Trigger) | `BKG-2026-000403` expires at `15:30:00` |
| Ban Start Timestamp | `2026-10-18 15:30:00` |
| Ban End Timestamp | `2026-10-19 15:30:00` (Exactly 24 hours later) |

# Preconditions
1. Customer has an active client account.
2. In the current calendar day (`2026-10-18`), customer already experienced two temporary booking expiries (`BKG-2026-000401` and `BKG-2026-000402`) without payment upload.
3. Customer has a 3rd active temporary booking (`BKG-2026-000403`) whose timer is about to reach zero without receipt upload.

# Steps
1. Allow the timer on `BKG-2026-000403` to reach zero (`15:30:00`).
2. Verify system updates `BKG-2026-000403` to "Expired".
3. Check the customer's account restriction status in the system.
4. Immediately attempt to initiate a new temporary booking at `15:35:00` on `2026-10-18`.
5. Attempt another temporary booking 23 hours later at `14:30:00` on `2026-10-19`.
6. Fast-forward time past `15:30:00` on `2026-10-19` (after the 24-hour window) and attempt a temporary booking.

# Expected Result
1. Upon the 3rd expiry within the same calendar day, the system automatically applies a temporary booking ban to the customer account.
2. The ban lasts exactly 24 hours starting from the timestamp of the 3rd qualifying expiry (`15:30:00`).
3. Attempts to create temporary bookings at Step 4 and Step 5 are rejected with a clear ban notification.
4. At Step 6 (after 24 hours elapsed), the temporary ban expires and the customer is permitted to create temporary bookings normally again.

# Notes
- Requirement: UF-03 Alternative Flow A2 and UF-01 Error Flow E4.
- Ban duration is exactly 24 hours from the last qualifying expiry.

# Attachments

# Script

---
*Last Updated: 2026-10-18 10:45*
