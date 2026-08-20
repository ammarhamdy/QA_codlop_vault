---
tc_id: TC-API-DASH-ADMIN-GET-015
title: Get all admins using an invalid HTTP method
priority:
  - Medium
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
| Endpoint | `https://seyanty.info/api/dashboard/admins` |
| Method | `POST` / `PUT` / `PATCH` / `DELETE` (instead of `GET`) |
| Content-Type | `application/json` |
| Authorization | `Bearer <valid_token>` |

# Preconditions
- User is logged in to the dashboard as an admin with a valid token.

# Steps
1. Send a request to `https://seyanty.info/api/dashboard/admins` using an HTTP method other than `GET`.
2. Set header `Authorization: Bearer <valid_token>`.
3. Set header `Content-Type: application/json`.
4. Send the request and capture the response.

# Expected Result
- The API returns HTTP status code `405 Method Not Allowed` (or `404 Not Found` if the route is not registered for the method).
- No admin data is returned.

# Notes
- `POST` may trigger a different endpoint behavior (e.g., Create Admin); verify against backend routing.

# Attachments
