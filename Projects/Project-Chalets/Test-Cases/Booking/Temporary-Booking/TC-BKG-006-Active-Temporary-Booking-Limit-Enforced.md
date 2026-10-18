---
tc_id: TC-BKG-006
title: Verify System Enforces Maximum Limit of Two Active Temporary Bookings
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
| Customer Account | Authenticated Client with 2 Active Temporary Bookings |
| Active Booking 1 | `BKG-2026-000101` (Temporary, countdown running) |
| Active Booking 2 | `BKG-2026-000102` (Temporary, countdown running) |
| Attempted Booking 3 | `شاليه الريف`, Date: `2026-11-20` (Available slot) |
| Expected Error Message | `لديك حجزان مؤقتان نشطان. أكمل أحدهما أو ألغه أولًا` |

# Preconditions
1. Customer is logged in to the mobile application.
2. Customer already has exactly two (2) active temporary bookings (`BKG-2026-000101` and `BKG-2026-000102`) whose timers have not expired and whose receipts have not been uploaded.
3. Target chalet (`شاليه الريف`) has an available slot on `2026-11-20`.

# Steps
1. Navigate to the place details screen for `شاليه الريف`.
2. Tap **"Book"** (`حجز`).
3. Select date `2026-11-20`, choose slot and number of guests.
4. Tap **"Book Temporarily"** (`احجز مؤقتًا`) and confirm the action.

# Expected Result
1. System validates the customer's active temporary booking count.
2. The 3rd temporary booking creation is rejected.
3. System displays the exact error message: `«لديك حجزان مؤقتان نشطان. أكمل أحدهما أو ألغه أولًا»`.
4. No new temporary booking is created and the slot remains available for other users.

# Notes
- Requirement: UF-01 Error Flow E3.
- Default limit is 2 active temporary bookings per customer.

# Attachments

# Script

---
*Last Updated: 2026-10-18 10:45*
