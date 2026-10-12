---
tc_id: TC-API-DASH-ADMIN-STATUS-010
title: Update admin status as an unauthorized user
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
| Authorization | `Bearer <valid_low_privilege_token>` |

# Preconditions
- The requester holds a valid token for an account that is logged in but lacks the required role/permission to update admin status (e.g., a support/customer account, not a privileged admin).

# Steps
1. Send a `POST` request to `https://seyanty.info/api/dashboard/admins/update-status/22`.
2. Set header `Authorization: Bearer <valid_low_privilege_token>`.
3. Set header `Content-Type: application/json`.
4. Send the request and capture the response.

# Expected Result
- The API returns HTTP status code `403 Forbidden`.
- The request is rejected and no admin status is changed.
- Response body indicates the user is not authorized to perform this action.

# Notes
- Exact error message may vary by backend; focus on the HTTP status code.

# Attachments