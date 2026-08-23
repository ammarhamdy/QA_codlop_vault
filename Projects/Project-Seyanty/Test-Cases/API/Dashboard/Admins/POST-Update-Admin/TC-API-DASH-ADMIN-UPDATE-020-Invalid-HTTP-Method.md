---
tc_id: TC-API-DASH-ADMIN-UPDATE-020
title: Update admin using an invalid HTTP method
priority:
  - Medium
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
| Endpoint | `https://seyanty.info/api/dashboard/admins/{id}` |
| Path Variable | `id` = existing admin id (e.g., `16`) |
| Method | `GET` / `PUT` / `PATCH` / `DELETE` (instead of `POST`) |
| Authorization | `Bearer <valid_token>` |

# Preconditions
- User is logged in to the dashboard as a privileged admin with a valid token.

# Steps
1. Send a request to `https://seyanty.info/api/dashboard/admins/16` using an HTTP method other than `POST`.
2. Set header `Authorization: Bearer <valid_token>`.
3. Set header `Content-Type: multipart/form-data`.
4. Send the request and capture the response.

# Expected Result
- The API returns HTTP status code `405 Method Not Allowed` (or `404 Not Found` if the route is not registered for the method).
- No admin record is modified.

# Notes
- `GET` may return the admin's data; verify against backend routing behavior.

# Attachments