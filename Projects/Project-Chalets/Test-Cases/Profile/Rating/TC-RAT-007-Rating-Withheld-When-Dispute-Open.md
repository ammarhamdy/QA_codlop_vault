---
tc_id: TC-RAT-007
title: Verify Rating Submitted During Active Dispute Is Withheld Until Dispute Closes
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
| Customer Mobile | `0501122334` |
| Booking ID | `BK-7705` |
| Chalet Name | `شاليه السعادة` |
| Dispute Status | `Open` (`قيد المعالجة`) |
| Star Rating | `1` |
| Comment Text | `حدثت مشاكل في النظافة وفتحنا نزاعاً بشأنه.` |
| Feedback Message | `«حُفظ تقييمك وسيُنشر بعد إغلاق النزاع»` |

# Preconditions
1. Booking `BK-7705` is confirmed and check-out time has passed.
2. A formal dispute is currently open and unresolved regarding booking `BK-7705`.
3. Customer has not previously submitted a rating for `BK-7705`.

# Steps
1. Navigate to booking `BK-7705` and tap **"Rate Your Stay"**.
2. Select `1` star and enter comment text.
3. Tap **"Submit Rating"** and confirm the dialog.
4. Observe the confirmation message displayed to the customer.
5. In the database / admin portal, check the rating record status.
6. Open the public chalet page for `شاليه السعادة` and check reviews.
7. Verify if the place's average rating has changed.
8. Check if the lessor received a new rating notification.

# Expected Result
1. The system accepts the submission and displays: `«حُفظ تقييمك وسيُنشر بعد إغلاق النزاع»`.
2. The rating status is set to `Withheld Until Dispute Closed` (`محجوب لحين إغلاق النزاع`).
3. The rating does NOT appear on the public place page.
4. The average rating of `شاليه السعادة` is NOT updated (only visible ratings count towards average).
5. The lessor is NOT notified of the new rating while it remains withheld.

# Notes
- Requirement: UF-14 Alternative Flow A4 & Lifecycle status.
- Prevents retaliatory or prejudicial reviews while a formal dispute investigation is actively ongoing.

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:30*
