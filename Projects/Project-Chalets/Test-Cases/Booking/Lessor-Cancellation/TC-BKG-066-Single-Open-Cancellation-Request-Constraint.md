---
tc_id: TC-BKG-066
title: Verify System Enforces Only One Open Cancellation Request Per Booking
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Booking/Lessor-Cancellation-Cycle.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Booking Reference | `BKG-2026-000706` |
| First Request Status | `Open` |
| Second Request Attempt | Attempted by lessor while first request is pending customer reply |
| Expected Error Message | `يوجد طلب إلغاء قيد الرد على هذا الحجز` |

# Preconditions
1. Booking `BKG-2026-000706` is "Booked".
2. Lessor has already submitted a cancellation request which is currently Open.

# Steps
1. As the Lessor, view booking `BKG-2026-000706` in the UI.
2. Verify whether the "Request Cancellation" button is available or disabled.
3. Attempt to invoke the create cancellation request API directly: `POST /api/bookings/BKG-2026-000706/cancellation-requests`.

# Expected Result
1. In the UI, the "Request Cancellation" button is hidden or disabled, replaced with a banner showing the active pending request.
2. Any direct API attempt to create a second cancellation request while one is Open is rejected with HTTP 409 Conflict / 422 Unprocessable Entity.
3. The system returns the exact Arabic error: `«يوجد طلب إلغاء قيد الرد على هذا الحجز»`.
4. No duplicate request record is created.

# Notes
- Requirement: UF-09 Error Flow E3 and Notes ("Only one open request is allowed per booking").

# Attachments

# Script

---
*Last Updated: 2026-10-18 15:00*
