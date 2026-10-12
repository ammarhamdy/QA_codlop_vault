---
tc_id: TC-API-DASH-ADMIN-GET-006
title: Get all admins as an unauthorized user
priority:
  - High
status:
  - completed
type:
  - API
linked_requirement: REQ-API-DASH-ADMIN-GET
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `GET https://seyanty.info/api/dashboard/admins` |
| Content-Type | `application/json` |
| Authorization | `Bearer <valid_low_privilege_token>` |
| Query Parameters | `pagination=on&page=1&limit=10` |

# Preconditions
- The requester holds a valid token for an account that is logged in but lacks the required role/permission to view admins (e.g., a support/customer account, not a privileged admin).

# Steps
1. Send a `GET` request to `https://seyanty.info/api/dashboard/admins?pagination=on&page=1&limit=10`.
2. Set header `Authorization: Bearer <valid_low_privilege_token>`.
3. Set header `Content-Type: application/json`.
4. Send the request and capture the response.

# Expected Result
- The API returns HTTP status code `403 Forbidden`.
- The request is rejected and no admin data is returned.
- Response body indicates the user is not authorized to perform this action.

# Notes
- Exact error message may vary by backend; focus on the HTTP status code.

# Attachments
