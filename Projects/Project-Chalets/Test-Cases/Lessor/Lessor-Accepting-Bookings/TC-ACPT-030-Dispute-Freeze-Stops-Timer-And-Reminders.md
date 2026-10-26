---
tc_id: TC-ACPT-030
title: Dispute Freeze - Confirmation Countdown Timer and Reminders Completely Stopped
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Accepting-Bookings.md
tags:
  - test-case
---

# Test Data
| Feature | State During Active Dispute |
| ------- | --------------------------- |
| Confirmation Countdown Timer | Frozen / Paused (Does not tick down or expire) |
| Automated Lessor Reminders | Suppressed / Stopped completely |

# Preconditions
1. A booking in "Awaiting Lessor Confirmation" has 10 hours remaining on its timer.
2. A dispute is opened on the booking.

# Steps
1. Open the booking details while the dispute is active.
2. Observe the timer value.
3. Check the booking again 4 hours later.
4. Verify whether any scheduled reminder notifications (e.g., halfway reminder, deadline warning) were dispatched to the lessor.

# Expected Result
1. The countdown timer is completely halted and frozen; it does not advance or expire while the dispute is pending.
2. All automated reminder pushes/SMS messages to the lessor are completely suspended.

# Notes
- Requirement: UF-80 (Notes - closed questions: "Does the counter stop... while a dispute freezes? Stop"), UF-83 (Main Flow Step 3, Alternative Flow A2).

# Attachments

# Script

---
*Last Updated: 2026-10-26 15:35*
