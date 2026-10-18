---
tc_id: TC-BKG-063
title: Verify Unanswered Cancellation Request Expires at Check-in Time Leaving Booking Confirmed
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Booking/Lessor-Cancellation-Cycle.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Booking Reference | `BKG-2026-000703` |
| Check-in Time | `2026-10-25 15:00:00` |
| Customer Action | No response (neither Accept nor Reject) |

# Preconditions
1. Booking `BKG-2026-000703` is "Booked".
2. Lessor submitted a cancellation request 2 days prior to check-in.
3. The cancellation request remains in status Open.

# Steps
1. Simulate the passage of time until system clock reaches check-in time (`2026-10-25 15:00:00`) with no customer interaction.
2. Verify the execution of the automated cancellation request expiration scheduler.
3. Inspect the updated status of the cancellation request.
4. Inspect the updated status of booking `BKG-2026-000703`.
5. Check slot reservation on the chalet calendar.

# Expected Result
1. At check-in time, the system automatically closes the cancellation request and sets its status to **Expired**.
2. The booking remains **"Booked"** (`محجوز`), confirmed, and binding on the lessor.
3. The slot remains booked for the customer; under no circumstances is it cancelled or released due to lack of customer response.
4. Both parties are notified that the cancellation request has expired.

# Notes
- Requirement: UF-09 Alternative Flow A2 ("Customer does not respond by check-in time: System closes the request as Expired. The booking stays confirmed and binding").

# Attachments

# Script

---
*Last Updated: 2026-10-18 15:00*
