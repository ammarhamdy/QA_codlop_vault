---
tc_id: TC-RAT-022
title: Verify Admin Hiding a Reported Rating Requires Reason and Updates Public View
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
| Review ID | `REV-9940` |
| Chalet ID | `CH-707` (`شاليه الريف`) |
| Report Reason | Offensive language / content violation |
| Admin Justification Reason | `مخالفة معايير النشر: استخدام ألفاظ غير لائقة` |
| Author Notification | Notice of administrative review action |

# Preconditions
1. Rating `REV-9940` is currently `Visible` on `شاليه الريف` with an attached lessor reply.
2. A user or lessor submitted a violation report against `REV-9940`.
3. Admin is logged into the Admin Dashboard.

# Steps
1. Navigate to Admin Dashboard -> Reported Reviews (`البلاغات على التقييمات`).
2. Open the report for review `REV-9940`.
3. Classify the report as **Valid** (`بلاغ صحيح`).
4. Attempt to click **"Hide Rating"** (`إخفاء التقييم`) without providing a justification reason.
5. Observe form validation response.
6. Enter mandatory reason: `مخالفة معايير النشر: استخدام ألفاظ غير لائقة`.
7. Confirm hiding the rating.
8. Open the public chalet page for `شاليه الريف`; check reviews and average score.
9. Verify whether lessor can reply to the hidden review.
10. Log in as the review's author and check "My Ratings" and push notifications.

# Expected Result
1. Hiding the rating without a reason is blocked; a justification reason is strictly mandatory.
2. After submitting a valid reason, the status updates to `Hidden by Admin`.
3. The rating and the lessor's reply are removed from the public chalet page, and further replies are blocked.
4. The chalet's average score is recalculated excluding this hidden review.
5. The author receives a notification, and in their "My Ratings" screen, the review is marked `«مخفي من الإدارة»`.
6. This action is recorded independently and is not counted against the user penalty ladder.

# Notes
- Requirement: UF-19 Main Flow Steps 1 to 6, Error Flow E1, and Notes.

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:30*
