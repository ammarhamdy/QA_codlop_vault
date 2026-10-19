---
tc_id: TC-RAT-016
title: Verify Lessor Reply Rules Enforce Exactly One Editable Reply
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Customer-Profile/Rating.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Review ID | `REV-8801` |
| Lessor Mobile | `0509988776` |
| Initial Reply Text | `أهلاً بك أخي الكريم، تشرفنا بخدمتك ويسعدنا دائماً استقبالكم.` |
| Updated Reply Text | `أهلاً بك أخي الكريم، تشرفنا بخدمتكم ونتطلع لاستضافتكم قريباً.` |

# Preconditions
1. Customer has submitted a 5-star rating (`REV-8801`) on lessor's property `منتجع النخيل`.
2. Rating `REV-8801` is `Visible` on the chalet place page.
3. Lessor receives the new rating notification with **"Reply Now"** (`رد الآن`).

# Steps
1. Log in as the lessor and tap **"Reply Now"** on the notification (or navigate to property reviews management).
2. Enter the initial reply text and submit.
3. Verify reply display underneath the customer's review on the public chalet page.
4. Attempt to add a second, distinct reply to the same review `REV-8801`.
5. Tap the **"Edit"** (`تعديل`) action on the existing reply.
6. Modify the text to Updated Reply Text and save changes.
7. Observe updated reply on the public chalet page.

# Expected Result
1. The lessor can successfully post an initial reply to the customer's review.
2. The system allows **only one single reply** per customer review; options to add further replies are disabled/unavailable.
3. The lessor is permitted to edit their single reply at any time.
4. The edited content updates properly on the public place page under the customer review.

# Notes
- Requirement: UF-14 Main Flow Step 9 & Notes (Closed question: "JUST one reply only for the lessor can be edited").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:30*
