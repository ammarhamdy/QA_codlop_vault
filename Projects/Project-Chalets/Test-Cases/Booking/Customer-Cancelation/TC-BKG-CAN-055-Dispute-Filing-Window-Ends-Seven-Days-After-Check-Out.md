---
tc_id: TC-BKG-CAN-055
title: Dispute Filing Window Ends Seven Days After Check-Out
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Booking/Customer-Cancellation
tags:
  - test-case
  - customer-booking-cancellation
---

# Test Data
| Field | Value |
| ----- | ----- |
| Scenario | Cancelled booking |
| Scenario | check-out timestamp |
| Scenario | 7-day dispute window |

# Preconditions

Customer is eligible for type C dispute.

# Steps

1. Open booking details before 7-day window ends and inspect Open Dispute.
2. Move server time past 7 days after check-out.
3. Inspect action and attempt direct dispute request.

# Expected Result

1. Before deadline, eligible dispute can be opened.
2. After deadline, dispute action is hidden and direct request rejected.
3. Message: انتهت مهلة فتح النزاع لهذا الحجز. يمكنك التواصل مع الدعم.

# Notes

The PRD measures dispute deadline from scheduled check-out, not cancellation time.

# Attachments

None.

# Script

Manual execution; use API client and server-side clock/configuration controls when specified. Automation script not supplied.

---
*Last Updated: 2026-10-21 09:00*
