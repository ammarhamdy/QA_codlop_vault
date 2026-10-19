---
tc_id: TC-DSP-007
title: Verify Booking Lifecycle Actions and Confirmation Timers Are Frozen While Dispute Is Open
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Disputes/Disputes.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Booking Reference | `BKG-2026-000807` |
| Initial Status | `Awaiting Lessor Confirmation` (`بانتظار تأكيد المؤجّر`) |
| Dispute Reference | `DSP-2026-000102` (Status: Open) |

# Preconditions
1. Booking `BKG-2026-000807` is in status "Awaiting Lessor Confirmation" with an active 24-hour decision timer running.
2. A dispute (`DSP-2026-000102`) is opened on this booking.

# Steps
1. As the Lessor, attempt to tap **"Confirm"** or **"Reject"** on `BKG-2026-000807`.
2. As the Customer, attempt to cancel or send a cancellation request on `BKG-2026-000807`.
3. As the Lessor, attempt to send a cancellation request.
4. Monitor the 24-hour confirmation window timer and automated reminder jobs for `BKG-2026-000807`.
5. Attempt direct API status updates on the booking from lessor or customer accounts.

# Expected Result
1. The booking is completely frozen: only an authorized support decision can change its status.
2. Lessor confirm and reject actions are blocked.
3. Cancellation and cancellation requests by either party are strictly blocked throughout the freeze.
4. The confirmation countdown timer and all automated reminders to the lessor are paused.
5. Direct API attempts to alter the booking return HTTP 409 Conflict.

# Notes
- Requirement: UF-08 Alternative Flows A3, A4, A5 ("Lessor tries to confirm or reject: Blocked. Either party tries to cancel or send cancellation request: Blocked. Confirmation timer and reminders stop").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:00*
