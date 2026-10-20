---
tc_id: TC-ACC-DEL-019
title: Immediate Account Deletion Execution when Admin Sets Grace Period to Zero Days
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/Role-Profile/Client
tags:
  - test-case
---

# Test Data
| Field               | Value                              |
| ------------------- | ---------------------------------- |
| admin_setting_key   | account_deletion_grace_period_days |
| admin_setting_value | 0                                  |
| user_phone          | +966509567890                      |
| otp_code            | ****                               |

# Preconditions
-Admin has configured `مهلة حذف الحساب` to `0` days in the system settings registry (`SettingsRegistry`).
-User account is in `active` status with no blockers.
-User is authenticated in the mobile application.

# Steps
1. Navigate to "حسابي" > "حذف الحساب".
2. Review the transparency information (noting that immediate deletion is communicated if configured).
3. Proceed and enter the valid OTP received via SMS.
4. Confirm via the red confirmation dialog.
5. Attempt to log in with the phone number `+966509567890`.

# Expected Result
- The deletion request processes without a 30-day grace period.
- The user status transitions directly to `deleted` (or is queued immediately for instant anonymization).
- The final SMS "حُذف حسابك" is dispatched immediately.
- Attempting to log in with the phone number does NOT show the restoration prompt ("حسابك مجدول للحذف"), but instead initiates a brand-new registration flow.

# Notes

# Attachments

# Script
- None

---
*Last Updated: 2026-10-20 12:44*
