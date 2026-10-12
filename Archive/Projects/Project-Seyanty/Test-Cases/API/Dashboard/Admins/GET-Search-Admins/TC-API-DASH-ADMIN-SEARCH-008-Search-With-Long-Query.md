---
tc_id: TC-API-DASH-ADMIN-SEARCH-008
title: Search admins with a long query
priority:
  - Low
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
| Endpoint | `GET https://seyanty.info/api/dashboard/admins-search` |
| Content-Type | `application/json` |
| Authorization | `Bearer <valid_token>` |
| Query Parameters | `key=<256+ character string>&pagination=on&page=1&limit=10` |

# Preconditions
- User is logged in to the dashboard as an admin with a valid token.

# Steps
1. Build a `key` value of 256+ characters.
2. Send a `GET` request to `https://seyanty.info/api/dashboard/admins-search?key=<long_value>&pagination=on&page=1&limit=10`.
3. Set header `Authorization: Bearer <valid_token>`.
4. Set header `Content-Type: application/json`.
5. Send the request and capture the response.

# Expected Result
- The API returns HTTP status code `200 OK` with no matching results, or a validation error if a maximum length rule applies.
- The request does not time out and no server exception occurs.

# Notes
- Long inputs should be truncated or rejected gracefully without crashing.

# Attachments
