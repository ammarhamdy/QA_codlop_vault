---
tc_id: TC-API-DASH-ADMIN-SEARCH-020
title: Search admins using an invalid HTTP method
priority:
  - Medium
status:
  - completed
type:
  - API
linked_requirement: REQ-API-DASH-ADMIN-SEARCH
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `https://seyanty.info/api/dashboard/admins-search` |
| Method | `POST` / `PUT` / `PATCH` / `DELETE` (instead of `GET`) |
| Content-Type | `application/json` |
| Authorization | `Bearer <valid_token>` |

# Preconditions
- User is logged in to the dashboard as an admin with a valid token.

# Steps
1. Send a request to `https://seyanty.info/api/dashboard/admins-search` using an HTTP method other than `GET`.
2. Set header `Authorization: Bearer <valid_token>`.
3. Set header `Content-Type: application/json`.
4. Send the request and capture the response.

# Expected Result
- The API returns HTTP status code `405 Method Not Allowed` (or `404 Not Found` if the route is not registered for the method).
- No search results are returned.

# Notes
- Verify against backend routing behavior.

# Attachments
