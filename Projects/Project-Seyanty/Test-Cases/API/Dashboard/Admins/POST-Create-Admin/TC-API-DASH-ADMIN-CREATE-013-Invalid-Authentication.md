---
tc_id: TC-API-DASH-ADMIN-CREATE-013
title: Create admin with invalid authentication token
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
| Authorization | `Bearer <invalid_token>`                         |
| name          | `Admin-10`                                       |
| email         | `admin-10@mail.com`                              |
| password      | `Admin#123`                                      |
| photo         | `/home/am/Pictures/color/violet.png`             |

# Preconditions
- A malformed/fabricated token (e.g., `invalid-token-123`) is used as the bearer token.

# Steps
1. Send a `POST` request to `https://seyanty.info/api/dashboard/admins`.
2. Set header `Authorization: Bearer <invalid_token>`.
3. Set header `Content-Type: multipart/form-data`.
4. Add all required form fields.
5. Send the request and capture the response.

# Expected Result
- The API returns HTTP status code `401 Unauthorized`.
- The request is rejected and no new admin record is created.
- Response body indicates invalid authentication credentials.

# Notes
- Exact error message may vary by backend; focus on the HTTP status code and the absence of data creation.

# Attachments
