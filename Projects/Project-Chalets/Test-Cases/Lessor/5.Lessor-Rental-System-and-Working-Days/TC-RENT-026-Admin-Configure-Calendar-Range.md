---
tc_id: TC-RENT-026
title: Verify Updating Calendar Range Setting Preserves Existing Bookings Beyond New Limit
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Rental-System-and-Working-Days.md
tags:
  - test-case
---

# Test Data
| Setting Field | Original Value | Updated Value |
| ------------- | -------------- | ------------- |
| Calendar Forward Range | 365 days | 180 days |
| Existing Far-Future Booking | Booked on day +250 | Preserved |

# Preconditions
1. Chalet has a confirmed booking scheduled 250 days in the future (within original 365-day range).
2. Admin opens Calendar Settings.

# Steps
1. Change Calendar Range in days from `365` to `180`.
2. Tap **Save Settings**.
3. Open the chalet calendar in the lessor application.
4. Verify the maximum forward navigation limit for new day edits.
5. In the bookings list, inspect the existing booking scheduled on day +250.

# Expected Result
1. The calendar forward navigation window for new manual day edits is constrained to the updated 180-day limit.
2. The existing confirmed booking on day +250 is preserved safely; lowering the calendar range does not cancel, delete, or invalidate bookings scheduled beyond the new range.

# Notes
- Requirement: UF-70 Notes (Closed question: "Does lowering the calendar range affect days already edited or booked beyond it? No").

# Attachments

# Script

---
*Last Updated: 2026-10-22 13:55*
