---
tc_id: TC-ACC-DEL-023
title: Interaction between Self-Service Account Deletion and Open Data Rights Request
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/Role-Profile/Client
tags:
  - test-case
---

# Test Data
| Field               | Value         |
| ------------------- | ------------- |
| user_phone          | +966509901234 |
| data_request_type   | copy          |
| data_request_status | in_progress   |
| otp_code            | ****          |

# Preconditions
-User account is in `active` status.
-User previously requested a copy of personal data via `POST /me/data-requests` (`type: copy`), which is currently `in_progress`.
-User has no active bookings or pending payment requests.

# Steps
1. Navigate to "حسابي" > "حذف الحساب".
2. Observe whether the open data rights request is flagged as a blocker in `GET /me/deletion`.
3. Enter the valid OTP received via SMS.
4. Confirm deletion in the red confirmation dialog.
5. Check the status of the `data_rights_requests` table in the database.

# Expected Result
- If the open data request does not act as a blocker, `POST /me/deletion` completes successfully, scheduling the account for deletion.
- The open data rights request in `data_rights_requests` is either marked as `closed` / canceled or continues processing within its 30-day statutory limit.
- User account enters `pending_deletion` status.

# Notes

# Attachments


# Script
- None

---
*Last Updated: 2026-10-20 12:44*
