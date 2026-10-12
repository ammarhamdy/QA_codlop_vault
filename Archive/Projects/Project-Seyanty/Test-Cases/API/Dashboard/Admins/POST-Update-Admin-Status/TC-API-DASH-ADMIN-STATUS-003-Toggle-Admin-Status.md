---
tc_id: TC-API-DASH-ADMIN-STATUS-003
title: Toggle admin status between active and inactive
priority:
  - High
status:
  - completed
type:
  - API
linked_requirement: REQ-API-DASH-ADMIN-STATUS
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://seyanty.info/api/dashboard/admins/update-status/{id}` |
| Path Variable | `id` = existing admin id (e.g., `22`) |
| Content-Type | `application/json` |
| Authorization | `Bearer <valid_token>` |

# Preconditions
- User is logged in to the dashboard as a privileged admin with a valid token.
- The target admin exists with a known initial `is_blocked` value (e.g., `active`).

# Steps
1. Send a `POST` request to `https://seyanty.info/api/dashboard/admins/update-status/22` and record the returned `is_blocked`.
2. Send the same `POST` request again and record the new `is_blocked`.
3. Send the request a third time and record the final `is_blocked`.

# Expected Result
- Each call toggles `is_blocked` between `active` and `inactive`.
- Each request returns HTTP status code `200 OK` with `"تم تغيير الحالة بنجاح"`.
- The `is_blocked` value alternates on every call: active -> inactive -> active.

# Notes
- Cleanup: restore the admin to its original status after the test.

# Attachments