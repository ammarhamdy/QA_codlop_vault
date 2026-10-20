---
tc_id: TC-ACC-DEL-006
title: Final Account Deletion Execution and Data Anonymization via Scheduled Job
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
| user_id | 10045 |
| phone_before | +966503456789 |
| name_before | خالد المنصور |
| name_after | مستخدم محذوف |
| scheduled_command | accounts:anonymize-due |

# Preconditions
-User account `user_id = 10045` has `status = 'pending_deletion'` and `deletion_due_at <= now()`.
-User has associated records: devices in `user_devices`, items in `favourites`, push preferences in `notification_preferences`, historical bookings in `bookings`, and written reviews in `reviews`.
-Horizon queue worker is operational for the `default` queue.

# Steps
1. Trigger the scheduled console command `php artisan accounts:anonymize-due` (simulating the 02:30 AM daily cron).
2. Query the `users` table for `user_id = 10045` and inspect the columns.
3. Query `user_devices` for `user_id = 10045`.
4. Query `favourites` for `user_id = 10045`.
5. Query `notification_preferences` for `user_id = 10045`.
6. Query `reviews` written by this user.
7. Query `bookings` associated with this user.
8. Query `sms_messages` to verify dispatch of the final deletion notification.

# Expected Result
1. The command processes the due user account without errors.
2. In the `users` table:
   - `status` is updated to `'deleted'`.
   - `name` is updated to `'مستخدم محذوف'`.
   - `phone_e164` is updated to `NULL`.
   - `phone_fingerprint` (HMAC blind index) is retained.
   - `anonymized_at` is populated with the execution timestamp.
3. Records in `user_devices`, `favourites`, and `notification_preferences` are permanently removed (`DELETE`).
4. Historical reviews written by the user remain in `reviews`, but the author's public display name is masked or displays as anonymous without the user's personal identity.
5. Historical booking records in `bookings` remain intact (`RESTRICT` foreign key enforcement for financial and audit integrity).
6. An SMS notification with the exact text "حُذف حسابك" is dispatched to the user's phone (`+966503456789`).

# Notes

# Attachments
- None

# Script
- None

---
*Last Updated: 2026-10-20 12:20*
