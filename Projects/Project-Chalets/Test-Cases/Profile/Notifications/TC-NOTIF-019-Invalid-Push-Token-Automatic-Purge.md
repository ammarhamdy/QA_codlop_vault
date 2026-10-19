---
tc_id: TC-NOTIF-019
title: Verify System Automatically Purges Invalid Device Push Token Without Retrying
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
| User Account | `0507788990` |
| Device Token State | Expired / Unregistered / Invalid (e.g., app uninstalled) |
| Push Gateway Response | HTTP 410 Gone / `NotRegistered` / `Unregistered` |

# Preconditions
1. User `0507788990` has a recorded device token in the database.
2. The device token has been invalidated or the app was uninstalled from the device.
3. System triggers a business event requiring push delivery.

# Steps
1. Dispatch an event generating a push notification to user `0507788990`.
2. Push service sends payload to FCM / APNs gateway.
3. Push gateway returns error response indicating invalid/unregistered token.
4. Inspect the application notification service logs and database records for user `0507788990`.
5. Trigger another push event for the same user.

# Expected Result
1. Upon receiving the invalid token response from the gateway, the system immediately deletes the device token from the database.
2. The system does NOT enter a continuous retry loop for the invalid token.
3. Subsequent notifications skip push dispatch for this device until a new valid token is registered.
4. The in-app copy of the notification is safely stored regardless of the push failure.

# Notes
- Requirement: UF-26 Error Flow E1 ("Provider reports the device token is invalid -> Token is deleted after the provider's response and is not retried").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:45*
