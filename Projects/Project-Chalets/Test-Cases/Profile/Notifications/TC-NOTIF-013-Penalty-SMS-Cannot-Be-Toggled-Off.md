---
tc_id: TC-NOTIF-013
title: Verify Penalty SMS Notifications Cannot Be Opted Out or Disabled
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
| Event Type | Penalty Application / Suspension Notice |
| Delivery Channel | SMS (Mandatory) |
| User Role | Customer or Lessor |

# Preconditions
1. User has turned off all optional push categories in "Notification Preferences".
2. Device push notifications may be disabled or uninstalled.

# Steps
1. Navigate through all settings and preference screens in the app.
2. Verify if any toggle, checkbox, or control exists to opt out of administrative SMS alerts or penalty SMS.
3. Trigger an administrative action resulting in a penalty or suspension on the user account.
4. Verify whether an SMS notification is delivered to the user's registered mobile number.

# Expected Result
1. No opt-out control exists for penalty/regulatory SMS messages.
2. Even if all optional push preferences are disabled, the system always dispatches the penalty notice via SMS.
3. Penalty SMS delivery is mandatory, irrevocable, and guaranteed across all user tiers.

# Notes
- Requirement: UF-25 Error Flow E2 & UF-26 Flow A3 ("User tries to turn off penalty SMS -> Not allowed, it always arrives").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:45*
