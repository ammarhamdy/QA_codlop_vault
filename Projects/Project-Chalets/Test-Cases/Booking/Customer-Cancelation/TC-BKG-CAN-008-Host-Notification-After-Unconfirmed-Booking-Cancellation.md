---
tc_id: TC-BKG-CAN-008
title: Host Notification After Unconfirmed Booking Cancellation
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
| Scenario | Customer name |
| Scenario | listing name |
| Scenario | stay date |

# Preconditions

-Customer owns a held or awaiting-confirmation booking; host can view notifications.

# Steps

1. Cancel the booking successfully.
2. Open host notifications.
3. Inspect notification content and target.

# Expected Result

- Host receives: ألغى {العميل} حجزه في {المكان} {التاريخ}.
- Variables correspond to the cancelled booking.
- Notification opens the correct booking; notification is available internally and through configured immediate channel.

# Notes


# Attachments

# Script


---
*Last Updated: 2026-10-21 09:00*
