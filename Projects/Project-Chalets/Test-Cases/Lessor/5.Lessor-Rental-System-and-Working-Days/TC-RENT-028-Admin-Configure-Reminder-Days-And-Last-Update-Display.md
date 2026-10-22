---
tc_id: TC-RENT-028
title: Verify Configuring Calendar Reminder Days and Audit Logging of Settings Changes
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Rental-System-and-Working-Days.md
tags:
  - test-case
---

# Test Data
| Setting Field | Action | Expected Behavior |
| ------------- | ------ | ----------------- |
| Reminder Days | Set to `0` | Calendar update reminder is turned off |
| Show Last Calendar Update | Toggle from `Yes` to `No` | Suppresses last update timestamp from customer view |
| Audit Log Event | Settings Update | Captures admin ID, timestamp, and field diff |

# Preconditions
1. Admin user is logged in with Calendar Settings permissions.
2. Admin opens Admin Panel -> Calendar Settings.

# Steps
1. Change Reminder Days input to `0`.
2. Toggle "Show Last Calendar Update" to `No`.
3. Tap **Save Settings**.
4. In lessor application, verify whether automated periodic calendar update reminders are triggered.
5. In client application, inspect whether "Last updated" date is hidden on the chalet card.
6. Open Admin Panel -> Audit Logs; inspect the latest log entry for Calendar Settings.

# Expected Result
1. Setting reminder days to `0` turns off the automated calendar reminder feature (Alternative Flow A1).
2. Toggling "Show Last Calendar Update" off hides the timestamp from the public chalet page.
3. Every modification to calendar settings is recorded immutably in the system audit log, documenting the admin identity, timestamp, and exact changes made.

# Notes
- Requirement: UF-70 Main Flow Steps 5 to 6, Flow A1 & Notes (Closed question: "Is every settings change audit-logged? Yes").

# Attachments

# Script

---
*Last Updated: 2026-10-22 13:55*
