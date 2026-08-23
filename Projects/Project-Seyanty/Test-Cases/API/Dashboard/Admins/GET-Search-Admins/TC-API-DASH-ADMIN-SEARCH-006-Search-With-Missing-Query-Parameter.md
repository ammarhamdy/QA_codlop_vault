---
tc_id: TC-API-DASH-ADMIN-SEARCH-006
title: Search admins with a missing query parameter
priority:
  - High
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
| Field            | Value                                                  |
| ---------------- | ------------------------------------------------------ |
| Endpoint         | `GET https://seyanty.info/api/dashboard/admins-search` |
| Content-Type     | `application/json`                                     |
| Authorization    | `Bearer <valid_token>`                                 |
| Query Parameters | `pagination=on&page=1&limit=10` *(no `key`)*           |

# Preconditions
- User is logged in to the dashboard as an admin with a valid token.

# Steps
1. Send a `GET` request to `https://seyanty.info/api/dashboard/admins-search?pagination=on&page=1&limit=10` without the `key` parameter.
2. Set header `Authorization: Bearer <valid_token>`.
3. Set header `Content-Type: application/json`.
4. Send the request and capture the response.

# Expected Result
- The API returns HTTP status code `400 Bad Request` or `422 Unprocessable Entity` if `key` is a required parameter.
- If `key` is optional, the endpoint returns `200 OK` with an unfiltered (or empty) result.
- No application error (500) is thrown.

# Notes
- Confirm whether `key` is required by inspecting the backend validation rules.

# Attachments
