---
tc_id: TC-BKG-002
title: Verify Successful Temporary Booking Creation for Specific Time Period Slot
priority: High
status:
  - closed
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Booking/Temporary-Booking.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Chalet / Place | `منتجع النخيل الهادئ` |
| Slot Type | Time Period (`فترة زمنية` - Evening / مسائية) |
| Booking Date | `2026-11-05` |
| Time Period Slot | `16:00 - 23:00` |
| Number of Guests | `8` |
| Default Expiry Timer | `2 Hours` |

# Preconditions
1. Mobile application is installed and active on the test device.
2. Customer is logged in with an active client account.
3. Customer has fewer than 2 active temporary bookings and is not under a temporary ban.
4. The selected chalet provides slot options by time periods and the evening period (`16:00 - 23:00`) on `2026-11-05` is available.

# Steps
1. Navigate to the place details screen for `منتجع النخيل الهادئ`.
2. Tap the **"Book"** (`حجز`) button.
3. Select date `2026-11-05` and choose the **Evening Period** (`16:00 - 23:00`).
4. Set the number of guests to `8`.
5. Verify the dynamic price calculation updates based on the selected time period and guest count.
6. Verify check-in time (`16:00`), check-out time (`23:00`), and cancellation policy are displayed accurately.
7. Tap **"Book Temporarily"** (`احجز مؤقتًا`) and confirm the prompt.

# Expected Result
1. System validates that the time period slot is available and customer is eligible.
2. Booking is created within 2 seconds with a unique reference number (e.g. `BKG-2026-000002`).
3. The evening period slot is reserved exclusively for this customer.
4. Pricing, policy, and lessor bank details snapshot are frozen.
5. The 2-hour countdown timer begins and displays the remaining time.

# Notes
- Requirement: UF-01 Main Flow (Steps 1–7).
- Supports booking specific time period rather than a full day.

# Attachments

# Script

---
*Last Updated: 2026-10-18 10:45*
