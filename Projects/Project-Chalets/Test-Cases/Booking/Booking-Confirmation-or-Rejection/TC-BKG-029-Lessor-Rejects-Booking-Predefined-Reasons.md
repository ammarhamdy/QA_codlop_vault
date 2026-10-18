---
tc_id: TC-BKG-029
title: Verify Lessor Successfully Rejects Booking With Each Predefined Rejection Reason
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
| Test Iteration 1 | Reason: `المبلغ لم يصل` (Amount not received) |
| Test Iteration 2 | Reason: `المبلغ ناقص` (Amount insufficient) |
| Test Iteration 3 | Reason: `الإيصال غير واضح` (Receipt unclear) |
| Booking References | `BKG-2026-000511`, `BKG-2026-000512`, `BKG-2026-000513` |

# Preconditions
1. Lessor is authenticated and has 3 pending bookings in "Awaiting Lessor Confirmation" status.
2. No disputes exist on these bookings.

# Steps
1. Open booking `BKG-2026-000511`, tap **"Reject"** (`رفض الحجز`).
2. Select reason **"المبلغ لم يصل"** and submit rejection.
3. Open booking `BKG-2026-000512`, tap **"Reject"**.
4. Select reason **"المبلغ ناقص"** and submit rejection.
5. Open booking `BKG-2026-000513`, tap **"Reject"**.
6. Select reason **"الإيصال غير واضح"** and submit rejection.
7. Verify the resulting status and stored rejection reason for each booking.

# Expected Result
1. In all 3 iterations, the predefined reason is accepted without requiring additional detail fields.
2. The booking status transitions to **"Rejected"** (`مرفوض`).
3. The selected rejection reason is stored accurately in the booking history.
4. Each customer receives a notification containing the specific rejection reason.

# Notes
- Requirement: UF-06 Main Flow Steps 1–4.
- Predefined reasons: `المبلغ لم يصل`, `المبلغ ناقص`, `الإيصال غير واضح`.

# Attachments

# Script

---
*Last Updated: 2026-10-18 12:15*
