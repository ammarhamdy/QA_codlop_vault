---
tc_id: TC-BKG-017
title: Verify Booking Expiration Sets Status to Expired and Releases Slot Within One Minute
priority: High
status:
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Booking/Temporary-Booking.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Temporary Booking ID | `BKG-2026-000301` |
| Chalet / Place | `منتجع البساتين` |
| Slot Date | `2026-11-18` (Full Day) |
| Slot Release Timeout | `<= 1 Minute` (60 seconds) |

# Preconditions
1. Customer has an active temporary booking (`BKG-2026-000301`) for `منتجع البساتين` on `2026-11-18`.
2. No payment receipt has been uploaded.
3. The temporary booking countdown timer reaches zero (`00:00:00`).

# Steps
1. Monitor the booking status of `BKG-2026-000301` at the exact moment the timer expires.
2. Verify customer notifications dispatched by the system.
3. In a separate browser/app session (as another customer), query the availability of the slot (`2026-11-18`) at 15 seconds, 30 seconds, and 60 seconds after timer expiry.

# Expected Result
1. As soon as the timer reaches zero with no receipt uploaded, the booking status transitions to **"Expired"** (`منتهي المهلة`).
2. The customer is notified that the temporary booking has expired.
3. The system releases the reserved slot within 1 minute, making it visible and bookable again for other customers.

# Notes
- Requirement: UF-03 Main Flow (Steps 1–3).
- System must release the slot within 1 minute of timer expiry.

# Attachments

# Script

---
*Last Updated: 2026-10-18 10:45*
