---
tc_id: TC-BKG-026
title: Verify Open Dispute Pauses Both Confirm and Reject Actions as Well as Reminders
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Booking/Booking-Confirmation-or-Rejection-Cycle.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Booking Reference | `BKG-2026-000506` |
| Dispute Reference | `DSP-2026-000010` (Open / Under Review) |
| Initial Status | `Awaiting Lessor Confirmation` |

# Preconditions
1. Booking `BKG-2026-000506` is in status "Awaiting Lessor Confirmation".
2. Customer opened a dispute (`DSP-2026-000010`) on this booking (e.g. reported a problem or dispute over payment/delay).
3. The dispute status is "Open" / "Under Investigation" by the support team.
4. Lessor is logged in and opens `BKG-2026-000506`.

# Steps
1. Navigate to booking `BKG-2026-000506` on the lessor portal while the dispute is open.
2. Inspect the availability and state of the **"Confirm"** and **"Reject"** buttons.
3. Attempt to invoke confirm or reject via direct API calls targeting `BKG-2026-000506`.
4. Monitor the confirmation window timer and scheduled reminder jobs.
5. In admin/support view, resolve and close the dispute.
6. Re-inspect booking `BKG-2026-000506` on the lessor portal.

# Expected Result
1. While the dispute is open, both **"Confirm"** and **"Reject"** actions are paused/disabled in the UI.
2. Backend API requests to confirm or reject are rejected with an informative error stating that actions are frozen due to an active dispute.
3. The confirmation deadline countdown and all automated lessor reminders are paused during the dispute.
4. Once the dispute decision is issued, normal workflows resume based on the dispute resolution.

# Notes
- Requirement: UF-04 Error Flow E1, UF-06 Error Flow E3, and UF-07 Error Flow E1 ("A dispute is open: Confirm and reject are paused until the dispute decision. Timeout and reminders are paused").

# Attachments

# Script

---
*Last Updated: 2026-10-18 12:15*
