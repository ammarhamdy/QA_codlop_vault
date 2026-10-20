---
tc_id: TC-ACC-DEL-011
title: Account Deletion Blocked by Open Booking Cancellation Request
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
| user_phone | +966507890123 |
| booking_number | BKG-2026-000104 |
| cancellation_request_id | CRQ-2026-000012 |
| request_status | open |

# Preconditions
-User account is in `active` status.
-User has a confirmed booking that currently has an unresolved cancellation request submitted by the host awaiting the customer's response (or vice versa).
-User is logged in to the mobile application.

# Steps
1. Navigate to "حسابي" > "حذف الحساب".
2. View the deletion requirements and blocker checks.
3. Observe the response from `GET /me/deletion`.
4. Attempt to request OTP or submit `POST /me/deletion`.

# Expected Result
1. The system blocks deletion due to the open cancellation request.
2. The user interface presents the blocker message indicating an active booking / cancellation request must be resolved first.
3. Account status remains `active`.

# Notes
# Attachments

# Script
- None

---
*Last Updated: 2026-10-20 12:20*
