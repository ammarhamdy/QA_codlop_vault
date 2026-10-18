---
tc_id: TC-BKG-033
title: Verify Customer Receives Rejection Notification With Reason and Report Problem Action
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
| Booking Reference | `BKG-2026-000517` |
| Rejection Reason Selected | `المبلغ ناقص` |
| Customer Mobile | `0507654321` |

# Preconditions
1. Booking `BKG-2026-000517` is in status "Awaiting Lessor Confirmation".
2. Customer is logged in to the customer mobile app.

# Steps
1. As the Lessor, reject booking `BKG-2026-000517` selecting reason **"المبلغ ناقص"**.
2. As the Customer, check incoming push notifications and the in-app notification center.
3. Tap the notification to open the booking details screen for `BKG-2026-000517`.
4. Inspect the displayed status, rejection reason banner, and action buttons.

# Expected Result
1. The customer receives a notification clearly stating that the booking was rejected by the lessor.
2. The notification and the booking details screen explicitly display the rejection reason (`المبلغ ناقص`).
3. The booking status is displayed as **"Rejected"** (`مرفوض`).
4. An active button **"Report a Problem"** (`الإبلاغ عن مشكلة`) is displayed on the screen, allowing the customer to initiate a dispute.

# Notes
- Requirement: UF-06 Steps 6–7.

# Attachments

# Script

---
*Last Updated: 2026-10-18 12:15*
