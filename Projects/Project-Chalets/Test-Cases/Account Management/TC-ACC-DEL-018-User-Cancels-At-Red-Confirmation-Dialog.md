---
tc_id: TC-ACC-DEL-018
title: User Dismisses or Cancels Final Red Confirmation Dialog
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/Role-Profile/Client
tags:
  - test-case
  - regression
---

# Test Data
| Field         | Value                      |
| ------------- | -------------------------- |
| user_phone    | +966509456789              |
| otp_code      | ****                       |
| dialog_action | Cancel ([تراجع] / [إلغاء]) |

# Preconditions
-User account is in `active` status.
-User is on the final confirmation step of the account deletion flow.
-User has entered a valid OTP code.
-The red confirmation dialog ("حوار أحمر") is displayed on screen.

# Steps
1. In the displayed red confirmation dialog, click the "تراجع" (Back/Dismiss) or "إلغاء" (Cancel) button.
2. Observe UI behavior and navigation.
3. Query the user record in the database.
4. Attempt to use the application normally (e.g. browse chalets, view bookings).

# Expected Result
- The red confirmation dialog closes immediately.
- User account status remains strictly `active`.
- No deletion notification is sent.
- The user remains authenticated with full access to their profile and application features.

# Notes

# Attachments

# Script

---
*Last Updated: 2026-10-20 12:44*
