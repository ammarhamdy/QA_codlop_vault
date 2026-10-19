---
tc_id: TC-NOTIF-014
title: Verify In-App Notification Is Always Preserved When Category Push Is Disabled
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
| Category | Ads (`الإعلانات`) |
| Preference State | Push OFF |
| Generated Event | Ad Approved / Decision Notice |

# Preconditions
1. Lessor has toggled the "Ads" category to OFF in "Notification Preferences".
2. System triggers an ad approval event for lessor's chalet.

# Steps
1. Verify no push banner appears on the device lock screen/notification shade.
2. Open the mobile app and navigate to "Notifications" (`الإشعارات`) -> Lessor Mode tab.
3. Observe whether the ad approval notification is present in the list.

# Expected Result
1. Push notification delivery is suppressed in accordance with the user's category preference.
2. The in-app copy of the notification is reliably generated, stored in the database, and rendered in the in-app list.
3. User preferences govern push dispatch only; in-app records are permanently preserved.

# Notes
- Requirement: UF-25 Main Flow Step 3 & UF-26 Alternative Flow A1 ("Push is skipped, in-app copy is still stored").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:45*
