---
tc_id: TC-NOTIF-012
title: Verify Security Notification Category Cannot Be Disabled by User
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
| Protected Category | Security & Critical Alerts (`الأمان والتنبيهات الأمنية`) |
| Expected Toggle State | Fixed ON (Disabled/Non-interactive or omitted from opt-out toggles) |

# Preconditions
1. User is on the "Notification Preferences" screen in Settings.

# Steps
1. Inspect the list of notification categories and toggles available.
2. Locate the Security category (or verify that security events are excluded from opt-out toggles).
3. If an explicit Security toggle is rendered, attempt to tap/toggle it to OFF.
4. If an API request is dispatched attempting to update preferences with `security_notifications: false`.

# Expected Result
1. The user is strictly prevented from turning off Security notifications.
2. The UI toggle for Security is either permanently locked in the ON position or clearly labeled as non-configurable/mandatory.
3. API requests attempting to deactivate security alerts are rejected with a validation error.

# Notes
- Requirement: UF-25 Error Flow E1 ("User tries to turn off the Security category -> Not allowed, it cannot be turned off").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:45*
