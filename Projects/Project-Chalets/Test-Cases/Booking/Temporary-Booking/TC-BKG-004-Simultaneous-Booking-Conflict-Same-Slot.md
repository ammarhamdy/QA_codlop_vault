---
tc_id: TC-BKG-004
title: Verify Simultaneous Booking Race Condition Rejects Second Attempt with Explicit Arabic Error
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Booking/Temporary-Booking.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Chalet / Place | `شاليه السعادة` |
| Slot Date | `2026-11-10` (Full Day) |
| Customer A | Authenticated Client A |
| Customer B | Authenticated Client B |
| Expected Conflict Error | `هذا الموعد محجوز مؤقتًا لعميل آخر. جرّب لاحقًا أو اختر موعدًا آخر` |

# Preconditions
1. Two distinct devices are configured with active, authenticated sessions for Customer A and Customer B.
2. Both customers have active temporary bookings count < 2 and are not banned.
3. `2026-11-10` is initially available for `شاليه السعادة`.
4. Both customers are on the confirmation step for the exact same date.

# Steps
1. On Device A (Customer A), tap **"Book Temporarily"** (`احجز مؤقتًا`) and confirm.
2. Simultaneously (or within fractions of a second), on Device B (Customer B), tap **"Book Temporarily"** and confirm.
3. Observe the response and status on Device A.
4. Observe the response and status on Device B.

# Expected Result
1. Exactly one booking succeeds (Customer A's booking is created within 2 seconds with unique reference and active timer).
2. Customer B's request is rejected by the system.
3. Customer B sees the exact error message: `«هذا الموعد محجوز مؤقتًا لعميل آخر. جرّب لاحقًا أو اختر موعدًا آخر»`.
4. The system prevents race condition / double-booking; only one reservation is held.

# Notes
- Requirement: UF-01 Error Flow E1.
- Error message text must match the requirement verbatim.

# Attachments

# Script

---
*Last Updated: 2026-10-18 10:45*
