---
tc_id: TC-RAT-008
title: Verify Withheld Rating Automatically Publishes and Notifies Lessor When Dispute Closes
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Customer-Profile/Rating.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Booking ID | `BK-7705` |
| Dispute ID | `DSP-304` |
| Chalet Name | `شاليه السعادة` |
| Star Rating | `1` |
| Lessor Notification | `«تقييم جديد (1★) على شاليه السعادة»` |

# Preconditions
1. A rating for booking `BK-7705` was submitted and is currently stored with status `Withheld Until Dispute Closed`.
2. Dispute `DSP-304` is actively open on booking `BK-7705`.

# Steps
1. As Support Admin or disputing parties, resolve and formally close dispute `DSP-304`.
2. Verify the dispute status transitions to `Closed` / `Resolved`.
3. Check the rating record status for booking `BK-7705`.
4. Open the public page for `شاليه السعادة` and inspect customer reviews and average score.
5. In the customer's booking view, check the status of the rating button.
6. Check the notifications sent to the lessor of `شاليه السعادة`.

# Expected Result
1. Upon dispute closure, the system automatically transitions the rating status from `Withheld Until Dispute Closed` to `Visible`.
2. The rating is now publicly displayed on the place page for `شاليه السعادة`.
3. The place's average rating is automatically recalculated incorporating this new visible rating.
4. The rating button on the booking details screen reflects **"Rated"** (`تم التقييم`).
5. The system automatically sends a notification to the lessor: `«تقييم جديد (1★) على شاليه السعادة»` with a **"Reply Now"** button.

# Notes
- Requirement: UF-14 Alternative Flow A4 & Diagram Step J-M.
- Lessor notification is deferred until the withheld rating is officially published.

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:30*
