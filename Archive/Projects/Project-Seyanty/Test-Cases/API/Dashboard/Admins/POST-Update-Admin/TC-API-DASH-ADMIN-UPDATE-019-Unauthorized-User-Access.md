---
tc_id: TC-API-DASH-ADMIN-UPDATE-019
title: Update admin as an unauthorized user
priority:
  - High
status:
  - completed
type:
  - API
linked_requirement: REQ-API-DASH-ADMIN-UPDATE
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://seyanty.info/api/dashboard/admins/{id}` |
| Path Variable | `id` = existing admin id (e.g., `16`) |
| Content-Type | `multipart/form-data` |
| Authorization | `Bearer <valid_low_privilege_token>` |
| _method | `put` |

# Preconditions
- The requester holds a valid token for an account that is logged in but lacks the required role/permission to update admins (e.g., a support/customer account, not a privileged admin).

# Steps
1. Send a `POST` request to `https://seyanty.info/api/dashboard/admins/16`.
2. Set header `Authorization: Bearer <valid_low_privilege_token>`.
3. Set header `Content-Type: multipart/form-data`.
4. Add form fields `_method=put`, `name`, and `email`.
5. Send the request and capture the response.

# Expected Result
- The API returns HTTP status code `403 Forbidden`.
- The request is rejected and no admin record is modified.
- Response body indicates the user is not authorized to perform this action.

# Notes
- Exact error message may vary by backend; focus on the HTTP status code.

# Attachments