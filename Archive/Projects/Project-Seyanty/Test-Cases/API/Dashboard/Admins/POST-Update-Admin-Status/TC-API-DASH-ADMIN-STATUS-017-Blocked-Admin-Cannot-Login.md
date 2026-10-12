---
tc_id: TC-API-DASH-ADMIN-STATUS-017
title: Verify a blocked admin cannot log in
priority:
  - High
status:
  - completed
type:
  - API
linked_requirement: REQ-API-DASH-ADMIN-STATUS
tags:
  - test-case
  - security
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://seyanty.info/api/dashboard/admins/update-status/{id}` |
| Path Variable | `id` = id of the target admin |
| Content-Type | `application/json` |
| Authorization | `Bearer <valid_token>` |
| Target Admin Credentials | `email` + `password` of the blocked admin |

# Preconditions
- The target admin holds valid credentials and can currently log in.
- The requesting admin holds a privileged token with permission to update admin status.

# Steps
1. Confirm the target admin can log in with its credentials.
2. Send a `POST` request to `https://seyanty.info/api/dashboard/admins/update-status/{id}` to set the target's status to `inactive` (blocked).
3. Attempt to log in with the target admin's credentials.
4. Verify the login is rejected.

# Expected Result
- The status update returns `200 OK` with `"تم تغيير الحالة بنجاح"` and `data.is_blocked` equal to `inactive`.
- The blocked admin's login attempt fails (e.g., `401` or a login error message).
- A blocked admin cannot obtain a valid token.

# Notes
- Cleanup: reactivate the admin after the test to restore the original state.

# Attachments