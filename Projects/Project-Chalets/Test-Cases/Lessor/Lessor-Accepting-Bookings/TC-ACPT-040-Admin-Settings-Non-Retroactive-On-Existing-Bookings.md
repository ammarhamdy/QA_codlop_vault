---
tc_id: TC-ACPT-040
title: Admin Settings Non-Retroactivity - Window Changes Apply Exclusively to Future Bookings
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Accepting-Bookings.md
tags:
  - test-case
---

# Test Data
| Booking | Creation Time Relative to Setting Change | Applicable Window |
| ------- | --------------------------------------- | ----------------- |
| Booking #Old | Created before change (when window was 24h) | Retains original 24h confirmation window |
| Setting Update | Admin changes confirmation window from 24h to 48h | Applies only forward |
| Booking #New | Created after setting change | Receives new 48h confirmation window |

# Preconditions
1. Booking #Old is actively awaiting lessor confirmation with 18 hours remaining (from initial 24h window).
2. Admin logs into the admin panel.

# Steps
1. In Booking Reception Settings, change the confirmation window from 24 hours to 48 hours and save.
2. Open Booking #Old in the lessor application.
3. Verify the remaining time on the countdown timer for Booking #Old.
4. Have a customer upload a receipt for a new booking (Booking #New).
5. Inspect the confirmation countdown window assigned to Booking #New.

# Expected Result
1. The setting change does NOT retroactively recalculate or alter the window of Booking #Old (it continues counting down against its original 24-hour limit).
2. Booking #New is initiated with the new 48-hour confirmation window.

# Notes
- Requirement: UF-85 (Notes - closed questions: "Do changed values affect bookings already waiting for confirmation? No").

# Attachments

# Script

---
*Last Updated: 2026-10-26 15:35*
