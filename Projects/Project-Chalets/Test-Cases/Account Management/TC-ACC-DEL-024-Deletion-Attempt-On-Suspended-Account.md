---
tc_id: TC-ACC-DEL-024
title: Account Deletion Attempt on an Administratively Suspended Account
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/Role-Profile/Client
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| user_phone | +966509912345 |
| account_status | suspended |
| suspension_reason | مخالفة سياسة النزاعات |

# Preconditions
-User account is currently in `suspended` status due to an administrative sanction or report.
-User has no active session with `app` abilities.

# Steps
1. Attempt to log in via the mobile application with the suspended account's phone number.
2. Enter the valid OTP code received via SMS.
3. Observe the landing screen and available options.
4. Attempt to access the "حذف الحساب" (Delete Account) option from the UI.
5. Open the public web page `https://tanfeeth.sa/delete-account`, enter the suspended account's phone number, and attempt deletion.

# Expected Result
- Upon OTP verification, the user receives a restricted token with capability `suspended` and is presented only with the suspension screen: "حسابك موقوف: {السبب}" and buttons [اعتراض] and [تواصل معنا].
- The user has no access to "حسابي" or the account deletion flow within the application.
- Calling `/delete-account` on the web detects that the account is currently suspended under an administrative action and rejects the deletion request with an appropriate error message (`ACCOUNT_SUSPENDED`).
- Account status remains `suspended` to preserve administrative penalties, dispute tracking, and appeal records.

# Notes

# Attachment

# Script


---
*Last Updated: 2026-10-20 12:44*
