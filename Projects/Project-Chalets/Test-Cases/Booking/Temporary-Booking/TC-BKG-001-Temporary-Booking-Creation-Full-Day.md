---
tc_id: TC-BKG-001
title: Verify Successful Temporary Booking Creation for Full Day Slot
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
| Chalet / Place | `شاليه الرمال الذهبية` |
| Slot Type | Full Day (`يوم كامل`) |
| Booking Date | `2026-11-01` |
| Number of Guests | `5` |
| Default Expiry Timer | `2 Hours` |

# Preconditions
1. Mobile application is installed and open on the test device.
2. Customer is authenticated and logged into an active client account.
3. Customer has zero or one active temporary booking (below the limit of 2).
4. Customer is not under any temporary ban.
5. The selected place has an available full-day slot on `2026-11-01`.

# Steps
1. Navigate to the place details screen for `شاليه الرمال الذهبية`.
2. Tap the **"Book"** (`حجز`) button.
3. On the booking screen, select the **Full Day** (`يوم كامل`) option for date `2026-11-01`.
4. Select the number of guests (`5`).
5. Review the calculated prices, total amount, check-in/check-out times, and cancellation policy.
6. Tap **"Book Temporarily"** (`احجز مؤقتًا`) and confirm the booking dialog.

# Expected Result
1. System validates slot availability, active temporary booking limit, and ban status.
2. Booking is created within 2 seconds with a unique booking reference formatted as `BKG-YYYY-NNNNNN` (e.g., `BKG-2026-000001`).
3. The selected slot is reserved for the customer and no longer available to others.
4. System stores a snapshot of the price, cancellation policy, and lessor bank details at creation time.
5. Countdown timer starts immediately (default 2 hours) and displays on screen.
6. User transitions to the payment transfer and receipt upload screen (UF-02).

# Notes
- Requirement: UF-01 Main Flow (Steps 1–7).
- Slot reservation must occur within 2 seconds.

# Attachments

# Script

---
*Last Updated: 2026-10-18 10:45*
