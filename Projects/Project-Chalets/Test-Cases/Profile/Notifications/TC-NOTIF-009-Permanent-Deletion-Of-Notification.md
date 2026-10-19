---
tc_id: TC-NOTIF-009
title: Verify Deleting a Notification Permanently Removes It from In-App List
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
| Target Notification | `NOTIF-305` |
| Deletion Action | Swipe to delete or tap trash icon on notification item |

# Preconditions
1. User has notification `NOTIF-305` visible in their notifications list.
2. User is on the "Notifications" screen.

# Steps
1. Locate notification `NOTIF-305`.
2. Swipe the notification card or tap the context delete icon.
3. Confirm deletion if prompted.
4. Pull to refresh or restart the app and re-open the "Notifications" screen.
5. Verify whether `NOTIF-305` appears in the list.

# Expected Result
1. The notification `NOTIF-305` is immediately removed from the notifications view.
2. The removal is permanent and irreversible (no undo option, purged from user list).
3. Refreshing or relaunching the application confirms that the deleted notification does not reappear.

# Notes
- Requirement: UF-24 Main Flow Step 4 & Notes (Closed question: "Does deleting remove the notification permanently? Yes").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:45*
