---
tc_id: TC-BKG-CAN-059
title: Type C Dispute Host Refund Reminder and Late Escalation
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
| Scenario | Type C decision |
| Scenario | due date 3 business days |
| Scenario | host did not mark refunded |

# Preconditions

Support issued a decision requiring host refund.

# Steps

1. Set business calendar including weekend and configured holidays.
2. Advance to one business day before due date.
3. Inspect host reminder channels.
4. Advance past due date without host marking تم الرد.

# Expected Result

-  Host receives refund reminder with amount and due date through immediate, in-app and SMS channels.
-  Due date excludes Friday, Saturday and configured official holidays.
- Overdue refund proposes next host penalty step; no automatic payment is taken.

# Notes

# Attachments

# Script


---
*Last Updated: 2026-10-21 09:00*
