---
tc_id: TC-API-DASH-ADMIN-CREATE-019
title: Verify the response status code for create admin
priority:
  - Medium
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
| Authorization | `Bearer <valid_token>`                           |
| name          | `Admin-10`                                       |
| email         | `admin-10@mail.com`                              |
| password      | `Admin#123`                                      |
| photo         | `/home/am/Pictures/color/violet.png`             |

# Preconditions
- User is logged in to the dashboard as an admin with a valid token.
- A valid `multipart/form-data` request payload is available.

# Steps
1. Send a `POST` request to `https://seyanty.info/api/dashboard/admins` with valid form fields and a valid token.
2. Capture the raw HTTP response status code.
3. Compare the actual status code against the documented expected status codes.

# Expected Result
- Success scenario returns HTTP status code `200 OK` or `201 Created`.
- Validation errors return `400 Bad Request` or `422 Unprocessable Entity`.
- Authentication failures return `401 Unauthorized`.
- Authorization failures return `403 Forbidden`.
- The status code is consistent with the endpoint's documented contract and the response body `code` field.

# Notes

# Attachments
