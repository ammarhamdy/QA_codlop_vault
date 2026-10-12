---
tc_id: TC-API-DASH-ADMIN-DELETE-012
title: Delete an admin using an invalid HTTP method
priority:
  - Medium
status:
  - completed
type:
  - API
linked_requirement: REQ-API-DASH-ADMIN-DELETE
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `https://seyanty.info/api/dashboard/admins/{id}` |
| Path Variable | `id` = existing admin id (e.g., `23`) |
| Method | `GET` / `POST` / `PUT` / `PATCH` (instead of `DELETE`) |
| Content-Type | `application/json` |
| Authorization | `Bearer <valid_token>` |

# Preconditions
- User is logged in to the dashboard as a privileged admin with a valid token.

# Steps
1. Send a request to `https://seyanty.info/api/dashboard/admins/23` using an HTTP method other than `DELETE`.
2. Set header `Authorization: Bearer <valid_token>`.
3. Set header `Content-Type: application/json`.
4. Send the request and capture the response.

# Expected Result
- The API returns HTTP status code `405 Method Not Allowed` (or `404 Not Found` if the route is not registered for the method).
- No admin record is deleted.

# Notes
- `GET` may return the admin's data; verify against backend routing behavior.

# Attachments
