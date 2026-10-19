---
tc_id: TC-NOTIF-007
title: Verify Tapping System Push Notification from Outside App Navigates to Target
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
| Push Payload Target | Booking Confirmation for `BK-8802` |
| App State | Terminated / Background |

# Preconditions
1. User has allowed push notifications.
2. The mobile application is completely closed (terminated) or running in background.
3. System delivers a push notification for booking confirmation `BK-8802`.

# Steps
1. Pull down device notification shade / lock screen.
2. Verify delivery of the push banner with chalet details and confirmation text.
3. Tap on the push notification banner.
4. Observe the application launch sequence and final rendered screen.
5. Navigate to the in-app "Notifications" screen.

# Expected Result
1. Tapping the external push notification opens the app and directly deep-links to the booking details page for `BK-8802`.
2. The user is not stranded on the home page or splash screen.
3. In the in-app notification center, the corresponding notification record is automatically marked as read.

# Notes
- Requirement: UF-24 Alternative Flow A1 ("User taps the push notification from outside the app -> Opens the target screen directly and marks it as read").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:45*
