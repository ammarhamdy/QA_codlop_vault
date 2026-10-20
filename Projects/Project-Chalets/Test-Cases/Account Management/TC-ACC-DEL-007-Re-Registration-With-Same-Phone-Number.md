---
tc_id: TC-ACC-DEL-007
title: Re-Registration with Same Phone Number Following Account Deletion
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/Role-Profile/Client
tags:
  - test-case
  - regression
---

# Test Data
| Field | Value |
| ----- | ----- |
| phone_number | +966503456789 |
| new_user_name | خالد السالم |
| otp_code | 9999 |

# Preconditions
-The previous account associated with `+966503456789` has completed final anonymization (`status = 'deleted'`, `phone_e164 = NULL`, `anonymized_at IS NOT NULL`).
-The user has no active session.

# Steps
1. Open the mobile application and enter `+966503456789` on the login screen.
2. Enter the valid OTP received via SMS.
3. Observe the API response and UI navigation.
4. Verify that the application treats this phone number as a new user and displays the profile completion screen (Name input 2–60 characters, unchecked terms consent checkbox).
5. Enter the new name "خالد السالم" and check the terms and privacy agreement checkbox.
6. Tap "إنشاء الحساب" (Create Account).


# Expected Result
- The system treats the phone number as unassigned because the previous account's `phone_e164` was set to `NULL`.
- The registration completes successfully (`POST /auth/register` returns 201 Created with a new user ID).
- A brand-new record is inserted into `users` with `status = 'active'`, `phone_e164 = '+966503456789'`, and the new name.
- The new account has no connection or access to the previous deleted account's favourites, past devices, or historical sessions.
- Old historical bookings and reviews remain tied to the anonymized record (`user_id = 10045`), not the new `user_id`.

# Notes


# Attachments


# Script


---
*Last Updated: 2026-10-20 12:20*
