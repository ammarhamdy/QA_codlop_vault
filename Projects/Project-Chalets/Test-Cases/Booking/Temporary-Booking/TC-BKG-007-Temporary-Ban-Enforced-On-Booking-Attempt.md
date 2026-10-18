---
tc_id: TC-BKG-007
title: Verify Temporary Booking Is Blocked for 24 Hours for User with Three Expiries in One Day
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
| Customer Account | Authenticated Client with 3 expiries today |
| Calendar Day | `2026-10-18` |
| Expiry 1 Timestamp | `2026-10-18 08:00:00` |
| Expiry 2 Timestamp | `2026-10-18 10:00:00` |
| Expiry 3 (Qualifying) Timestamp | `2026-10-18 12:00:00` |
| Temporary Ban Duration | `24 Hours` (until `2026-10-19 12:00:00`) |
| Test Attempt Time | `2026-10-18 14:00:00` (within ban window) |

# Preconditions
1. Customer has accumulated 3 temporary booking expiries within the same calendar day (`2026-10-18`), with the 3rd expiry occurring at `12:00:00`.
2. Current system time is within the 24-hour ban window (e.g., `2026-10-18 14:00:00`).
3. Customer is authenticated in the mobile application.

# Steps
1. Navigate to any available chalet details screen.
2. Tap **"Book"** (`حجز`).
3. Select an available slot and enter required details.
4. Tap **"Book Temporarily"** (`احجز مؤقتًا`) and confirm.

# Expected Result
1. System checks user ban eligibility before booking creation.
2. The booking request is rejected because the user is currently under a 24-hour temporary ban.
3. System shows a clear message informing the user that temporary bookings are restricted for 24 hours due to repeated booking expiries.
4. No booking reference is generated and the slot remains available.

# Notes
- Requirement: UF-01 Error Flow E4 and UF-03 Alternative Flow A2.
- Ban lasts exactly 24 hours from the timestamp of the last qualifying (3rd) expiry.

# Attachments

# Script

---
*Last Updated: 2026-10-18 10:45*
