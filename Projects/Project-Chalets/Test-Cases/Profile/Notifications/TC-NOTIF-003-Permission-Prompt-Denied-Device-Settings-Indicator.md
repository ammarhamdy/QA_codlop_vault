---
tc_id: TC-NOTIF-003
title: Verify Denying Device Permission Switches to In-App Only and Displays Settings Link
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Customer-Profile/Notifications.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| OS Dialog Action | "Don't Allow" / "رفض" |
| Settings Status Notice | `«الإشعارات معطلة من الجهاز»` |
| Settings Action Button | **[Open Settings]** (`[فتح الإعدادات]`) |

# Preconditions
1. Push notification permission prompt is presented to the user.
2. User taps **"Enable Notifications"**, triggering the native OS permission prompt.

# Steps
1. Tap "Don't Allow" / "رفض" on the native OS push notification permission dialog.
2. Observe app behavior and navigation.
3. Trigger a business event that generates a push notification (e.g., booking reminder or message reply).
4. Check the in-app "Notifications" screen.
5. Open App Settings -> "Notification Preferences" (`تفضيلات الإشعارات`).
6. Tap the **[Open Settings]** button.

# Expected Result
1. The app handles denial gracefully without crashing; the in-app explanation closes.
2. Push notifications are not sent; all notifications arrive reliably in the in-app notification center.
3. In "Notification Preferences", the banner displays: `«الإشعارات معطلة من الجهاز»` alongside the button **[Open Settings]**.
4. Tapping **[Open Settings]** deep-links directly to the device's system settings page for the app.
5. The permission prompt is not displayed again on future meaningful actions once explicitly denied.

# Notes
- Requirement: UF-23 Alternative Flow A2 & Diagram Step I.

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:45*
