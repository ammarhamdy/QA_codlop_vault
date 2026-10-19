---
tc_id: TC-NOTIF-024
title: Verify System Handles Unconfigured Push Service Keys Gracefully
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Customer-Profile/Notifications.md
tags:
  - test-case
---

# Test Data
| Key Configuration Field | Test Scenario Value |
| ----------------------- | ------------------- |
| Apple APNs Auth Key / Cert | Empty / Not Configured |
| Google FCM Server Key / JSON | Empty / Not Configured |

# Preconditions
1. In a staging environment, Apple and Google push notification credentials are deliberately left unconfigured/empty in Admin Settings.
2. In-app notification storage is active.

# Steps
1. Navigate to Admin Settings -> Push Configuration; verify keys are blank.
2. Trigger an application event that includes push notification in its channel matrix (e.g., booking reminder or new rating).
3. Monitor system log outputs.
4. Open the customer or lessor mobile app and check the in-app "Notifications" screen.

# Expected Result
1. The notification service handles empty push keys without throwing fatal unhandled exceptions or crashing background workers.
2. Push notification dispatch is safely bypassed/skipped.
3. In-app notifications are successfully generated and permanently stored in the database.
4. When valid APNs and FCM credentials are later entered and saved, push notifications resume normal dispatch.

# Notes
- Requirement: UF-27 Main Flow Step 6 & Error Flow E3 ("Push keys are empty -> Push is not sent, in-app is still stored").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:45*
