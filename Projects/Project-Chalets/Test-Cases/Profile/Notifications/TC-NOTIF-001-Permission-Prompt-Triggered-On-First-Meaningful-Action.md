---
tc_id: TC-NOTIF-001
title: Verify Push Notification Permission Prompt Appears on First Meaningful Action
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Customer-Profile/Notifications.md
tags:
  - test-case
---

# Test Data
| Role | Meaningful Action Trigger | Expected Explanatory Text |
| ---- | ------------------------- | ------------------------- |
| Customer | First Contact Reveal (tapping to view lessor phone) or First Join Request | `«نبلغك عند الرد على رسائلك وعند دعوتك لتقييم إقامتك»` |
| Lessor | First activation of Lessor Mode (`التبديل إلى وضع المؤجر`) | `«نبلغك فورًا عند وصول مهتم جديد وقبل انتهاء اشتراكك»` |

# Preconditions
1. App is freshly installed on a mobile device where push notification permission has not yet been requested or granted.
2. User is logged in.

# Steps
1. Launch the application for the first time.
2. Observe if any notification permission dialog or prompt appears immediately upon launch.
3. As a Customer, browse chalets and perform the first meaningful action (e.g., tap to reveal contact or submit a join request).
4. Observe the post-action prompt and explanation text.
5. Tap **"Enable Notifications"** (`تفعيل الإشعارات`).
6. Observe the operating system permission dialog.
7. Tap "Allow" / "موافق" on the OS dialog.

# Expected Result
1. The permission prompt is strictly NOT shown at first app launch.
2. After the first meaningful action completes, the contextual explanatory prompt appears displaying the exact role-specific text:
   - For Customer: `«نبلغك عند الرد على رسائلك وعند دعوتك لتقييم إقامتك»`
3. Tapping "Enable Notifications" invokes the native OS push notification permission dialog.
4. Allowing permission registers the device token with the push service backend.

# Notes
- Requirement: UF-23 Main Flow Steps 1 to 4.
- Contextual permission prompting prevents immediate user drop-off compared to cold first-launch requests.

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:45*
