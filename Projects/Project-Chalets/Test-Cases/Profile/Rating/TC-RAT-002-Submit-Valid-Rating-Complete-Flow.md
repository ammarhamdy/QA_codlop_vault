---
tc_id: TC-RAT-002
title: Verify Successful Submission of Post-Stay Rating and Public Visibility
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
| Booking ID | `BK-7702` |
| Chalet Name | `شاليه الريان` |
| Star Rating | `5` |
| Comment | `مكان رائع ونظيف جداً، استمتعنا بالإقامة وسنكرر التجربة بالتأكيد.` |
| Success Toast | `«شكرًا! نُشر تقييمك»` |
| Informational Notice | `«يظهر تقييمك باسمك الأول ولا يمكن تعديله بعد الإرسال»` |
| Confirmation Dialog | `«إرسال التقييم؟ لا يمكن تعديله بعد الإرسال، ويمكنك حذفه لاحقًا»` |

# Preconditions
1. Customer is logged in and has completed booking `BK-7702` for `شاليه الريان`.
2. Check-out time has passed and no previous rating exists for this booking.
3. No active dispute is open on booking `BK-7702`.

# Steps
1. Navigate to booking details for `BK-7702` and tap **"Rate Your Stay"** (`قيّم إقامتك`).
2. Verify the informational notice banner at the top of the rating form.
3. Select `5` stars.
4. Enter the test comment into the comment text area.
5. Tap **"Submit Rating"** (`إرسال التقييم`).
6. Verify the confirmation modal message and tap **Confirm** (`تأكيد`).
7. Observe system toast response and booking details screen button state.
8. Within 1 minute, open the public place page for `شاليه الريان` and check the customer reviews section.
9. Log in as the lessor of `شاليه الريان` and check notifications.

# Expected Result
1. The rating form displays notice: `«يظهر تقييمك باسمك الأول ولا يمكن تعديله بعد الإرسال»`.
2. Tapping submit displays confirmation dialog: `«إرسال التقييم؟ لا يمكن تعديله بعد الإرسال، ويمكنك حذفه لاحقًا»`.
3. After confirming, success toast appears: `«شكرًا! نُشر تقييمك»`.
4. In booking details, the button changes from "Rate Your Stay" to disabled/indicator **"Rated"** (`تم التقييم`).
5. Within 1 minute, the rating is Visible on the place page, and the average score is updated.
6. The lessor receives a notification: `«تقييم جديد (5★) على شاليه الريان»` with a **"Reply Now"** (`رد الآن`) action button.

# Notes
- Requirement: UF-14 Main Flow Steps 2 to 9.
- Published ratings cannot be edited, only deleted.

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:30*
