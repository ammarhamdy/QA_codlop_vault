---
tc_id: TC-NOTIF-002
title: Verify Postponing Notification Permission Suppresses Prompt for Seven Days
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
| Action Button | **"Not Now"** (`ليس الآن`) |
| Suppression Duration | 7 days (168 hours) |

# Preconditions
1. Push notification permission has not yet been granted on the device.
2. Contextual explanation prompt is currently displayed on screen.

# Steps
1. Tap the **"Not Now"** (`ليس الآن`) button on the notification permission prompt.
2. Verify that the prompt dismisses cleanly.
3. Perform further meaningful actions (e.g., reveal another contact, switch modes, make a booking).
4. Simulate advancing the system clock by 3 days and perform meaningful actions.
5. Simulate advancing the system clock past 7 full days (e.g., day 8) and perform a meaningful action.

# Expected Result
1. Tapping "Not Now" dismisses the prompt without invoking the native OS permission modal.
2. The prompt is completely suppressed and does not reappear during the 7-day cooldown period.
3. After 7 days have elapsed, performing a meaningful action allows the contextual explanation prompt to be displayed again.

# Notes
- Requirement: UF-23 Alternative Flow A1 ("Taps 'Not Now' -> Prompt closes and is not shown again for 7 days").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:45*
