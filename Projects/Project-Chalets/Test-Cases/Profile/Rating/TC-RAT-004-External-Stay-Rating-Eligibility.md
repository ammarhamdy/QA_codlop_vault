---
tc_id: TC-RAT-004
title: Verify Customer Eligibility to Rate an External Stay Recorded by Lessor
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
| Customer Mobile | `0554433221` |
| External Stay ID | `EXT-1049` |
| Chalet Name | `شاليه الواحة` |
| Stars | `4` |
| Comment | `إقامة خارجية هادئة ومريحة، شكراً للمضيف على حسن الاستقبال.` |

# Preconditions
1. The lessor has recorded an external offline stay `EXT-1049` for `شاليه الواحة` associated with customer phone number `0554433221`.
2. The check-out date/time of the external stay has passed.
3. Customer `0554433221` is logged into the mobile application.

# Steps
1. Open the Customer Profile screen in the application.
2. Navigate to the section **"My Stays and Rating Invitations"** (`إقاماتي ودعوات التقييم`).
3. Verify that external stay `EXT-1049` for `شاليه الواحة` is listed.
4. Tap on the stay entry or the **"Rate Your Stay"** action button.
5. Select `4` stars, enter comment text, and tap **"Submit Rating"**.
6. Confirm the submission prompt.

# Expected Result
1. The external stay `EXT-1049` is displayed in "My Stays and Rating Invitations" with an active rating option.
2. The rating form opens normally and accepts valid stars and comment.
3. Upon confirmation, the rating is published to the place page with status `Visible`.
4. The external stay status in "My Stays and Rating Invitations" updates to indicate it has been rated.

# Notes
- Requirement: UF-14 Preconditions & Alternative Flow A1.
- Stays recorded outside the app under customer's mobile number are fully eligible for post-stay ratings.

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:30*
