---
tc_id: TC-NOTIF-008
title: Verify Mark All as Read Updates All Items and Clears Unread Badge
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Customer-Profile/Notifications.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Initial Unread Count | `5` unread notifications |
| Action Button | **"Mark All as Read"** (`تحديد الكل كمقروء`) |

# Preconditions
1. User has 5 unread notifications in the in-app notification center.
2. The notification bell icon displays unread badge `5`.

# Steps
1. Open the "Notifications" screen.
2. Verify that unread items display visual unread indicators.
3. Tap the **"Mark All as Read"** button in the header.
4. Observe the state of all notification items in the list.
5. Check the unread badge counter on the notification screen and the app bar icon.

# Expected Result
1. All notifications across the active list immediately transition to read status.
2. Visual unread highlights/indicators are cleared from every item.
3. The unread badge counter is completely cleared (badge disappears or displays 0).

# Notes
- Requirement: UF-24 Main Flow Step 3 ("Taps 'Mark All as Read' -> Marks all notifications as read and clears the badge").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:45*
