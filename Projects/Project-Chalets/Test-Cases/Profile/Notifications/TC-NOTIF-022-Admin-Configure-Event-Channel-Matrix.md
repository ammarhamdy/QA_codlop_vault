---
tc_id: TC-NOTIF-022
title: Verify Admin Configuration of Event-Channel Matrix and Validation Guardrails
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Customer-Profile/Notifications.md
tags:
  - test-case
---

# Test Data
| Event | Allowed Modifications | Prohibited Modifications |
| ----- | --------------------- | ------------------------ |
| Standard Booking Reminder | Toggle Push / In-App | Disable In-App Storage |
| Administrative Penalty | Toggle Push / In-App | **Remove SMS (Blocked)** |

# Preconditions
1. Admin user is authenticated with administrative settings permissions.
2. Admin opens Admin Dashboard -> "Notification Settings" (`إعدادات الإشعارات`).

# Steps
1. View the event $\times$ channel matrix grid displaying events across Push, In-App, SMS, and Email.
2. For event "Booking Reminder 24 Hours", adjust channels and save changes.
3. For event "Penalty Application", attempt to uncheck the SMS channel checkbox.
4. Attempt to save the matrix without SMS for penalty events.
5. Attempt to disable/uncheck "In-App" storage for any event.
6. Attempt to save.

# Expected Result
1. The admin can successfully configure channels for standard business events.
2. The system prevents removing SMS from the Penalty event; the SMS toggle is locked or saving is blocked with error: `E2: Penalty SMS is fixed`.
3. The system enforces that in-app storage cannot be disabled for any notification event.
4. Saved channel matrix configurations immediately govern future event notifications.

# Notes
- Requirement: UF-27 Main Flow Steps 1 to 2, Error Flow E2, and Notes.

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:45*
