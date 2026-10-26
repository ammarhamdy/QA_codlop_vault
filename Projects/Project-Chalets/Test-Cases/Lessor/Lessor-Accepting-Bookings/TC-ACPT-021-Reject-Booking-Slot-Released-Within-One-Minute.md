---
tc_id: TC-ACPT-021
title: Reject Booking - Calendar Slot Released to Available Within One Minute
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Accepting-Bookings.md
tags:
  - test-case
---

# Test Data
| Parameter | Value |
| --------- | ----- |
| Booked Date | `2026-11-20` |
| Maximum Slot Release Latency | `<= 1 minute` (Within 60 seconds) |
| Post-Release State | `Available` (`متاح` for new customer bookings) |

# Preconditions
1. A booking holding date `2026-11-20` is awaiting lessor confirmation.
2. The calendar date is currently blocked to the public.

# Steps
1. As the lessor, submit and confirm the rejection of the booking.
2. Immediately observe the chalet availability calendar from a separate customer session.
3. Check the calendar status at 15 seconds, 30 seconds, and 60 seconds post-rejection.
4. Attempt to book date `2026-11-20` as a new customer once released.

# Expected Result
1. The reserved slot on `2026-11-20` is released back to "Available" within at most 1 minute.
2. Another customer can immediately select the date and start a new temporary booking.

# Notes
- Requirement: UF-06 (Main Flow Step 5: "Releases the slot within 1 minute").

# Attachments

# Script

---
*Last Updated: 2026-10-26 15:35*
