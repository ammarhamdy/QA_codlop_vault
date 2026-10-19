---
tc_id: TC-RAT-017
title: Verify Customer Can Successfully Delete Their Own Visible Rating
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
| Review ID | `REV-9901` |
| Booking ID | `BK-7720` |
| Chalet Name | `منتجع الأرجوان` |
| Post-Deletion Status Label | `"Rating Deleted"` (`تم حذف التقييم`) |

# Preconditions
1. Customer has an active rating `REV-9901` with status `Visible` on `منتجع الأرجوان`.
2. The lessor had previously posted a reply to `REV-9901`.
3. Customer is logged in to the mobile application.

# Steps
1. Navigate to customer profile and tap **"My Ratings"** (`تقييماتي`).
2. Locate rating `REV-9901` for `منتجع الأرجوان`.
3. Tap the **"Delete"** (`حذف`) button on the rating card.
4. When confirmation dialog appears, tap **Confirm** (`تأكيد`).
5. Open the public chalet page for `منتجع الأرجوان` and check the reviews list.
6. Verify if the lessor's reply to `REV-9901` is still visible.
7. Observe the chalet's recalculated average score.
8. Navigate to booking details for `BK-7720` and check button state.
9. Verify whether any notification is sent to the lessor regarding the deletion.

# Expected Result
1. Tapping Delete prompts for confirmation; confirming sets the rating status to `Deleted by Author`.
2. The customer's rating and the lessor's corresponding reply are completely hidden from the public chalet page.
3. The place's average rating is automatically recalculated based only on remaining visible ratings.
4. In booking details for `BK-7720`, the status reflects **"Rating Deleted"** (`تم حذف التقييم`) and no option to re-rate is offered.
5. The lessor is **NOT** notified of the rating deletion.

# Notes
- Requirement: UF-18 Main Flow Steps 1 to 5 & Notes (Closed questions: "Is the lessor notified when a rating is deleted? NO").
- Deletion removes both the review and any attached lessor reply.

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:30*
