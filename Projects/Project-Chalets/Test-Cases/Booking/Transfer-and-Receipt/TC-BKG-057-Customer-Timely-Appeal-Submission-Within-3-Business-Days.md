---
tc_id: TC-BKG-057
title: Verify Customer Can Submit Appeal Within Three Business Days with Penalty Remaining in Force
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Booking/Transfer-and-Receipt-Cycle.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Customer Account | `CUST-9014` |
| Penalty Applied Date | Monday, `2026-10-19 10:00:00` |
| Appeal Submission Date | Wednesday, `2026-10-21 14:00:00` (Day 3 of business days) |
| Appeal Justification | `تم الحصول على خطاب مصدق من البنك يفيد بصحة العملية ورقم المرجع` |

# Preconditions
1. Customer `CUST-9014` received a penalty notification on `2026-10-19 10:00:00`.
2. Current date is within the 3-business-day window (excluding official weekend days).
3. Customer has not previously submitted an appeal for this penalty.

# Steps
1. As Customer `CUST-9014`, open the Penalty Notification / Account Status screen.
2. Tap the **"Appeal Penalty"** (`تقديم تظلم / استئناف`) button.
3. Enter the appeal justification and attach supporting bank letter.
4. Submit the appeal.
5. Check account restriction state immediately following appeal submission.
6. Check Admin / Management Appeal Review queue.

# Expected Result
1. The appeal is successfully submitted and registered in the system within the 3-business-day window.
2. The penalty remains **active and in force** while under review (appeal submission does not suspend or pause the penalty).
3. The appeal is queued for executive review by the System Manager or General Manager.
4. Customer receives confirmation that their appeal is under review.

# Notes
- Requirement: UF-05 Main Flow Step 2 ("Customer submits one appeal within 3 business days of the notice: Registers the appeal. The penalty stays in force").

# Attachments

# Script

---
*Last Updated: 2026-10-18 14:35*
