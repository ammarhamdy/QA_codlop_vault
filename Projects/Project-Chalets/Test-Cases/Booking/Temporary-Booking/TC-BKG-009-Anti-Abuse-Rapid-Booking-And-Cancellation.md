---
tc_id: TC-BKG-009
title: Verify Anti-Abuse Rule Blocks or Flags Repeated Book-Then-Cancel Behavior
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
| Customer Account | Client account used to trigger repeated cancellations |
| Target Place | `شاليه الأرجوان` |
| Pattern Simulated | Repeated rapid creation and immediate cancellation of temporary bookings |

# Preconditions
1. Customer is logged in to the application.
2. Target chalet has open slots.
3. Anti-abuse detection rules are active in the booking service.

# Steps
1. Customer books a temporary slot for `شاليه الأرجوان`.
2. Immediately cancel the temporary booking.
3. Repeat the book-then-cancel sequence multiple times consecutively within a short time threshold to block other customers from booking.
4. Attempt to create another temporary booking.

# Expected Result
1. The anti-abuse rule detects the abusive book-and-cancel pattern intended to deny service to other customers.
2. The system blocks or flags the subsequent booking attempt.
3. Appropriate security/abuse message is displayed or the account is restricted from temporary bookings.

# Notes
- Requirement: UF-01 Error Flow E6 and Notes ("يجب منع التلاعب اذا حاول العميل الحجز ثم الانهاء لمجرد حجب خدمة الحجز عن باقي العملاء").

# Attachments

# Script

---
*Last Updated: 2026-10-18 10:45*
