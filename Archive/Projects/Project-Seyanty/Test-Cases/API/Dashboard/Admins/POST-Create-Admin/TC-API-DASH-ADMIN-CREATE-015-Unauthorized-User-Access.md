---
tc_id: TC-API-DASH-ADMIN-CREATE-015
title: Create admin as an unauthorized user
priority:
  - High
status:
  - completed
type:
  - API
linked_requirement: REQ-API-DASH-ADMIN-CREATE
tags:
  - test-case
run_result: pass
---

# Test Data
| Field         | Value                                            |
| ------------- | ------------------------------------------------ |
| Endpoint      | `POST https://seyanty.info/api/dashboard/admins` |
| Content-Type  | `multipart/form-data`                            |
| Authorization | `Bearer <valid_low_privilege_token>`             |
| name          | `Admin-10`                                       |
| email         | `admin-10@mail.com`                              |
| password      | `Admin#123`                                      |
| photo         | `/home/am/Pictures/color/violet.png`             |

# Preconditions
- The requester holds a valid token for an account that is logged in but lacks the required role/permission to create admins (e.g., a support/customer account, not a privileged admin).

# Steps
1. Send a `POST` request to `https://seyanty.info/api/dashboard/admins`.
2. Set header `Authorization: Bearer <valid_low_privilege_token>`.
3. Set header `Content-Type: multipart/form-data`.
4. Add all required form fields.
5. Send the request and capture the response.

# Expected Result
- The API returns HTTP status code `403 Forbidden`.
- The request is rejected and no new admin record is created.
- Response body indicates the user is not authorized to perform this action.

# Notes
- Exact error message may vary by backend; focus on the HTTP status code and the absence of data creation.

# Attachments
