---
tc_id: TC-API-DASH-ADMIN-CREATE-016
title: Create admin using an invalid HTTP method
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
| Field | Value |
| ----- | ----- |
| Endpoint | `https://seyanty.info/api/dashboard/admins` |
| Method | `GET` / `PUT` / `PATCH` / `DELETE` (instead of `POST`) |
| Content-Type | `multipart/form-data` |
| Authorization | `Bearer <valid_token>` |

# Preconditions
- User is logged in to the dashboard as an admin with a valid token.

# Steps
1. Send a request to `https://seyanty.info/api/dashboard/admins` using an HTTP method other than `POST`.
2. Set header `Authorization: Bearer <valid_token>`.
3. Set header `Content-Type: multipart/form-data`.
4. Add all required form fields.
5. Send the request and capture the response.

# Expected Result
- The API returns HTTP status code `405 Method Not Allowed` (or `404 Not Found` if the route is not registered for the method).
- No new admin record is created.

# Notes
- `GET` may return the list of admins; verify against backend routing behavior.

# Attachments
