---
tc_id: TC-API-DASH-ADMIN-SEARCH-007
title: Search admins with special characters
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
| Field            | Value                                                  |
| ---------------- | ------------------------------------------------------ |
| Endpoint         | `GET https://seyanty.info/api/dashboard/admins-search` |
| Content-Type     | `application/json`                                     |
| Authorization    | `Bearer <valid_token>`                                 |
| Query Parameters | `key=@#\$%^&*&pagination=on&page=1&limit=10`           |

# Preconditions
- User is logged in to the dashboard as an admin with a valid token.
- The query value is URL-encoded before sending.

# Steps
1. URL-encode the query `@#$%^&*` and send a `GET` request to `https://seyanty.info/api/dashboard/admins-search?key=<encoded>&pagination=on&page=1&limit=10`.
2. Set header `Authorization: Bearer <valid_token>`.
3. Set header `Content-Type: application/json`.
4. Send the request and capture the response.

# Expected Result
- The API returns HTTP status code `200 OK` with no matching results (`data` is `[]`, `total` is `0`).
- Special characters are safely handled; no SQL injection, error, or server exception (`500`) occurs.

# Notes
- If a server error occurs, log a security/robustness bug with priority High.

# Attachments
