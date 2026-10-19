---
tc_id: TC-NOTIF-006
title: Verify Tapping Notification Deep-Links to Target Screen and Marks Item as Read
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
| Notification ID | `NOTIF-201` |
| Notification Type | Rating Invitation |
| Target Screen | Rating Form for booking `BK-7701` |
| Initial Status | Unread (`غير مقروء`) |

# Preconditions
1. Customer has an unread notification `NOTIF-201` in the in-app notification center.
2. The notification points to target booking `BK-7701`.
3. Total unread badge count is currently `3`.

# Steps
1. Open the "Notifications" screen.
2. Locate the unread notification `NOTIF-201`.
3. Tap on the notification item.
4. Observe the destination screen displayed in the app.
5. Tap back to return to the "Notifications" screen.
6. Verify the read status of `NOTIF-201` and the updated unread badge count.

# Expected Result
1. Tapping the notification immediately deep-links and navigates to the target rating form for `BK-7701`.
2. The notification `NOTIF-201` transitions from unread to read status.
3. The unread badge count decrements from `3` to `2`.

# Notes
- Requirement: UF-24 Main Flow Step 2 ("Taps a notification -> Opens its target screen and marks it as read").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:45*
