---
tc_id: TC-BKG-037
title: Verify Customer Views Waiting Time Message on Delayed Confirmation and Can Report Problem
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
| Booking Reference | `BKG-2026-000523` |
| Receipt Upload Timestamp | `2026-10-18 08:00:00` |
| Inspection Timestamp | `2026-10-19 12:00:00` (28 hours elapsed) |
| Expected Elapsed Duration Display | `28 ساعة` |

# Preconditions
1. Customer uploaded transfer receipt for `BKG-2026-000523` 28 hours ago.
2. Lessor has not yet confirmed or rejected the booking.
3. Customer is logged in to the customer mobile app.

# Steps
1. As the Customer, navigate to "My Bookings" (`حجوزاتي`).
2. Open booking `BKG-2026-000523`.
3. Inspect the pending status banner and information card.
4. Verify the elapsed waiting time text.
5. Tap the **"Report a Problem"** (`الإبلاغ عن مشكلة`) button.

# Expected Result
1. The customer sees a clear message stating how long they have been waiting for confirmation (e.g., `بانتظار تأكيد المؤجّر منذ 28 ساعة`).
2. The UI explains that the delay is being followed up and provides the active **"Report a Problem"** button.
3. Tapping "Report a Problem" opens the problem submission flow, allowing the customer to report the delayed confirmation to support.

# Notes
- Requirement: UF-07 Steps 4–5.

# Attachments

# Script

---
*Last Updated: 2026-10-18 12:15*
