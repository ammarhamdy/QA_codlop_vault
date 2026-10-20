---
tc_id: TC-ACC-DEL-002
title: Request Account Deletion via Policy Update Consent Screen
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/Role-Profile/Client
tags:
  - test-case
  - regression
---

# Test Data
| Field                   | Value         |
| ----------------------- | ------------- |
| user_phone              | +966509876543 |
| updated_policy_version  | 2.0           |
| policy_requires_consent | true          |
| otp_code                | ****          |

# Preconditions
-User account is in `active` status.
-An updated Terms of Service or Privacy Policy version is published by Admin with `requires_consent = true`.
-User has not yet consented to the new version.
-User has no active bookings or pending payment requests.

# Steps
1. Launch the mobile application with an active authenticated session.
2. Observe the mandatory policy update blocking screen appearing immediately upon startup.
3. Verify that three explicit actions are displayed: "أوافق" (Agree), "تسجيل الخروج" (Logout), and "حذف حسابي" (Delete My Account).
4. Tap "حذف حسابي".
5. Verify redirection to the account deletion workflow (transparency screen followed by OTP verification).
6. Enter the 4-digit OTP received via SMS.
7. Confirm the deletion in the red confirmation dialog.

# Expected Result
1. The policy update screen blocks application navigation until an action is selected.
2. Tapping "حذف حسابي" initiates the deletion flow without requiring prior policy consent.
3. After entering the valid OTP and confirming in the red dialog, the API `POST /me/deletion` succeeds.
4. User account status changes to `pending_deletion` with `deletion_due_at = now() + 30 days`.

# Notes

# Attachments


# Script


---
*Last Updated: 2026-10-20 12:20*
