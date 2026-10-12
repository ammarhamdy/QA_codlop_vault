---
tc_id: TC-API-DASH-ADMIN-CREATE-017
title: Create admin without the Content-Type header
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
| Content-Type  | *(omitted)*                                      |
| Authorization | `Bearer <valid_token>`                           |
| name          | `Admin-10`                                       |
| email         | `admin-10@mail.com`                              |
| password      | `Admin#123`                                      |
| photo         | `/home/am/Pictures/color/violet.png`             |

# Preconditions
- User is logged in to the dashboard as an admin with a valid token.

# Steps
1. Send a `POST` request to `https://seyanty.info/api/dashboard/admins`.
2. Set header `Authorization: Bearer <valid_token>`.
3. Do NOT set the `Content-Type` header.
4. Add all required form fields.
5. Send the request and capture the response.

# Expected Result
- The API returns an appropriate error status code (`415 Unsupported Media Type` or `400 Bad Request`).
- The request is rejected and no new admin record is created.

# Notes
- Exact status code depends on backend middleware behavior.

# Attachments
