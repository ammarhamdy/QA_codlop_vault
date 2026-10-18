---
tc_id: TC-BKG-079
title: Verify Lessor Appeal Enforces Written Reason Single Submission and 3-Business-Day Window
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
| Lessor ID | `LESSOR-3018` |
| Penalty Reference | `PEN-2026-000102` |
| Notice Timestamp | Monday, `2026-10-19 10:00:00` |
| Valid Appeal Deadline | Wednesday, `2026-10-21 23:59:59` (3 business days) |
| Late Attempt Timestamp | Sunday, `2026-10-25 10:00:00` |
| Valid Appeal Reason | `تم رد المبلغ للعميل بحوالة رقم 998822 ومرفق إشعار التحويل البنكي` |

# Preconditions
1. Penalty `PEN-2026-000102` is active on lessor `LESSOR-3018`.
2. Lessor received notice on `2026-10-19 10:00:00`.
3. Lessor opens the appeal submission form.

# Steps
1. Attempt to submit appeal with empty reason field.
2. Enter valid written reason (`تم رد المبلغ للعميل بحوالة رقم 998822 ومرفق إشعار التحويل البنكي`) within the 3-business-day window and submit.
3. Verify appeal registration status and verify that the penalty remains active during review.
4. Immediately attempt to submit a second appeal for `PEN-2026-000102`.
5. On a separate penalty test record where notice was received > 3 business days ago (`2026-10-25`), attempt to submit an appeal.

# Expected Result
1. Empty reason is blocked with validation message requiring a written explanation.
2. Valid submission is accepted and registers the appeal.
3. The penalty remains **in force** throughout the review process (appeal submission does not unfreeze the penalty).
4. Second appeal attempt for the same penalty is rejected: only one appeal is permitted per penalty.
5. Attempt submitted after 3 business days is rejected as late.

# Notes
- Requirement: UF-12 Main Flow Steps 1–2 and Error Flows E1, E2, E3.

# Attachments

# Script

---
*Last Updated: 2026-10-18 15:00*
