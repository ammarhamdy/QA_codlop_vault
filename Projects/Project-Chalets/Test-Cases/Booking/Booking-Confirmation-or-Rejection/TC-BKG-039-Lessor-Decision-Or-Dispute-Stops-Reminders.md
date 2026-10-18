---
tc_id: TC-BKG-039
title: Verify Lessor Reminders Stop Immediately When Decision Is Made or Dispute Is Opened
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Booking/Booking-Confirmation-or-Rejection-Cycle.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Booking Reference A | `BKG-2026-000525` (Lessor confirms at hour 14) |
| Booking Reference B | `BKG-2026-000526` (Dispute opened at hour 10) |
| Reminder Cron Job | Automated periodic lessor nudge job |

# Preconditions
1. Two bookings (`BKG-2026-000525` and `BKG-2026-000526`) are in "Awaiting Lessor Confirmation".
2. Reminder job scheduler is active.

# Steps
1. On `BKG-2026-000525`, after the 12-hour reminder has been sent, the Lessor taps **"Confirm"** at hour 14.
2. Monitor future scheduled reminder queues for `BKG-2026-000525` at hour 18 and hour 24.
3. On `BKG-2026-000526`, the customer opens a dispute at hour 10 (before the 12-hour reminder).
4. Monitor scheduled reminders for `BKG-2026-000526` as clock passes hour 12 and hour 24.

# Expected Result
1. For `BKG-2026-000525`, the moment the lessor confirms (or rejects), the system de-registers all pending reminder jobs and support alerts. No further reminders are sent.
2. For `BKG-2026-000526`, opening a dispute freezes the confirmation window timer and halts all automated reminders immediately until the dispute is resolved.

# Notes
- Requirement: UF-07 Alternative Flow A1 ("Lessor confirms or rejects at any point: reminders stop") and Error Flow E1 ("A dispute is opened: Timeout and reminders stop until the dispute decision").

# Attachments

# Script

---
*Last Updated: 2026-10-18 12:15*
