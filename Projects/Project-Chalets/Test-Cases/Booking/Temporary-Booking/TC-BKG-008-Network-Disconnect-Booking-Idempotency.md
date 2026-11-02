---
tc_id: TC-BKG-008
title: Verify System Idempotency When Connection Is Lost Immediately After Booking Submission
priority: Medium
status:
  - completed
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Booking/Temporary-Booking.md
tags:
  - test-case
run_result: pass
---

# Test Data
| Field          | Value                                                         |
| -------------- | ------------------------------------------------------------- |
| Chalet / Place | `al-maha-chalet-ad` - `شاليه المها`                           |
| Slot Date      | `2026-11-10` (Full Day)                                       |
| Network Action | Abrupt disconnect immediately upon tapping "Book Temporarily" |

# Preconditions
1. Customer is logged in and eligible to create temporary bookings.
2. `al-maha-chalet-ad` - `شاليه المها` is available on `2026-11-10`.
3. Network simulation tool / proxy is enabled to simulate abrupt connection drop right after sending the booking confirmation payload.

# Steps
1. Navigate to `al-maha-chalet-ad` - `شاليه المها` and configure booking for `2026-11-10`.
2. Tap **"Book Temporarily"** (`احجز مؤقتًا`) and confirm.
3. Immediately drop network connection before receiving the HTTP response.
4. Restore network connectivity after 5 seconds.
5. Re-open the application / navigate to "My Bookings" (`حجوزاتي`) or retry the booking action.

# Expected Result
1. The system processes the initial request idempotently **بشكل متكرر** .
2. System checks the outcome of the booking without generating a duplicate booking record.
3. Customer sees exactly one temporary booking record for `2026-11-10` with its active countdown timer running.
4. Slot is not duplicated or locked multiple times.

# Notes
- Requirement: UF-01 Error Flow E5.
- Prevents duplicate reservations upon client-side connection drops or retries.

# Attachments

# Script

---
*Last Updated: 2026-10-18 10:45*
