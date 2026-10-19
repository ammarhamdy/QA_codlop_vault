---
tc_id: TC-DSP-002
title: Verify Dispute Creation Is Disallowed and Hidden More Than 7 Days After Check-Out
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
| Booking Reference | `BKG-2026-000802` |
| Check-Out Date & Time | `2026-10-10 12:00:00` |
| Current System Time | `2026-10-18 14:00:00` (8 days and 2 hours after check-out) |
| Expected Direct API Error | `انتهت مهلة فتح النزاع لهذا الحجز. يمكنك التواصل مع الدعم` |

# Preconditions
1. Customer has a confirmed or cancelled booking `BKG-2026-000802`.
2. Check-out time was `2026-10-10 12:00:00`.
3. Current system time is more than 7 days past check-out (`2026-10-18 14:00:00`).
4. Customer is logged in to the customer mobile app.

# Steps
1. Navigate to booking details for `BKG-2026-000802` in the mobile app.
2. Inspect the booking details view for the presence of the "Open Dispute" (`فتح نزاع`) button.
3. Attempt to invoke the dispute submission API directly: `POST /api/disputes` targeting `BKG-2026-000802`.

# Expected Result
1. In the mobile UI, the **"Open Dispute"** button is completely hidden from the booking details screen.
2. Direct API invocation is rejected with a validation error returning the exact message: `«انتهت مهلة فتح النزاع لهذا الحجز. يمكنك التواصل مع الدعم»`.
3. No dispute record is created.

# Notes
- Requirement: UF-08 Error Flow E1 ("More than 7 days after check-out: 'Open Dispute' is hidden. A direct request shows: «انتهت مهلة فتح النزاع لهذا الحجز. يمكنك التواصل مع الدعم»").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:00*
