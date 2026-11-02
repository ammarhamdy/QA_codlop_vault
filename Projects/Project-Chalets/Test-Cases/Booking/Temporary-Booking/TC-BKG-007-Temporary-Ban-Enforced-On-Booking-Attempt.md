---
tc_id: TC-BKG-007
title: Verify Temporary Booking Is Blocked for 24 Hours for User with {Three} Expiries in One Day
priority: High
status:
  - completed
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Booking/Temporary-Booking.md
tags:
  - test-case
run_result: pass
---

# Test Data
| Field                           | Value                                      |
| ------------------------------- | ------------------------------------------ |
| Customer Account (510000003)    | Authenticated Client with 3 expiries today |
| Expiry 1 Timestamp              | `2026-11-10` ~ `2026-11-11`                |
| Expiry 2 Timestamp              | `2026-11-11` ~ `2026-11-12`                |
| Expiry 3 (Qualifying) Timestamp | `2026-11-12` ~ `2026-11-13`                |
| Temporary Ban Duration          | `15 Minutes`                               |
| Place-Id                        | `chalet-al-waha-ad`                        |

# Preconditions
1. Customer has accumulated 3 temporary booking expiries within the same calendar day (`2026-10-18`), with the 3rd expiry occurring at `12:00:00`.
2. Current system time is within the 24-hour ban window (e.g., `2026-10-18 14:00:00`).
3. Customer is authenticated in the mobile application.
4. ![[Pasted image 20261101134007.png]]
5. ![[Pasted image 20261101133642.png]]
# Steps
1. Navigate to any available chalet details screen.
2. Tap **"Book"** (`حجز`).
3. Select an available slot and enter required details.
4. Tap **"Book Temporarily"** (`احجز مؤقتًا`) and confirm.

# Expected Result
1. System checks user ban eligibility جدارة للقبول before booking creation.
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
