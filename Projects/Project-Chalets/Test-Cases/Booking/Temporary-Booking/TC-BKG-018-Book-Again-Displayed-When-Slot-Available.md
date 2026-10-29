---
tc_id: TC-BKG-018
title: Verify Book Again Option Appears on Expired Booking Screen When Slot Remains Available
priority: Medium
status:
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Booking/Temporary-Booking.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Expired Booking ID | `BKG-2026-000302` |
| Chalet / Place | `شاليه الأثير` |
| Slot Date | `2026-11-22` |
| Action Button | **"Book Again"** (`احجز مجددًا`) |

# Preconditions
1. Customer had a temporary booking (`BKG-2026-000302`) that has expired due to timer completion.
2. The customer has not reached the 3-expiry daily ban threshold.
3. The released slot on `2026-11-22` has not been booked by any other user and remains available.

# Steps
1. Navigate to "My Bookings" (`حجوزاتي`) and open the expired booking `BKG-2026-000302`.
2. Inspect the action buttons available on the expired booking view.
3. Tap the **"Book Again"** (`احجز مجددًا`) button.

# Expected Result
1. The expired booking details view displays the **"Book Again"** (`احجز مجددًا`) button because the slot is currently free.
2. Tapping "Book Again" directly initiates the temporary booking creation flow (UF-01) for that same slot.
3. The user does not need to manually search and find the chalet from scratch.

# Notes
- Requirement: UF-03 Main Flow Step 4.

# Attachments

# Script

---
*Last Updated: 2026-10-18 10:45*
