---
tc_id: TC-NOTIF-010
title: Verify System Handles Notification with Non-Existent Target Gracefully
priority: Low
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Customer-Profile/Notifications.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Notification | Notice regarding a rating or join request |
| Target Entity State | Entity has been deleted or administratively removed |
| Expected State | "No available screen" / `«هذا المحتوى لم يعد متاحًا»` |

# Preconditions
1. User received a notification referencing a resource (such as a review or join request) that has since been deleted or purged from the database.
2. The notification item remains listed in the user's notification center.

# Steps
1. Open the "Notifications" screen.
2. Tap the notification whose target entity has been removed.
3. Observe system behavior and screen transition.

# Expected Result
1. The app does NOT crash, freeze, or enter an infinite loading spinner.
2. The app renders a dedicated graceful empty/unavailable state ("No available screen" / `«هذا المحتوى لم يعد متاحًا»`).
3. The notification is safely marked as read.

# Notes
- Requirement: UF-24 Error Flow E1 & Notes (Closed question: "What does the user see when the target is no longer available? No available screen").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:45*
