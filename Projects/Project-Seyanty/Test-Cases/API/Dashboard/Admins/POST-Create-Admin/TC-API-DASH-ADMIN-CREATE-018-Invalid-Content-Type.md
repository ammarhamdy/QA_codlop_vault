---
tc_id: TC-API-DASH-ADMIN-CREATE-018
title: Create admin with an invalid Content-Type header
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
| Field         | Value                                                |
| ------------- | ---------------------------------------------------- |
| Endpoint      | `POST https://seyanty.info/api/dashboard/admins`     |
| Content-Type  | `application/json` *(unsupported for this endpoint)* |
| Authorization | `Bearer <valid_token>`                               |
| name          | `Admin-10`                                           |
| email         | `admin-10@mail.com`                                  |
| password      | `Admin#123`                                          |

# Preconditions
- User is logged in to the dashboard as an admin with a valid token.

# Steps
1. Send a `POST` request to `https://seyanty.info/api/dashboard/admins`.
2. Set header `Authorization: Bearer <valid_token>`.
3. Set header `Content-Type: application/json` (or `text/plain`).
4. Send the request body as JSON-formatted data.
5. Send the request and capture the response.

# Expected Result
- The API returns an appropriate error status code (`415 Unsupported Media Type` or `400 Bad Request`).
- The request is rejected and no new admin record is created.

# Notes
- The endpoint only accepts `multipart/form-data`.

# Attachments
