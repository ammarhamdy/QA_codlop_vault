---
tc_id: TC-API-DASH-ADMIN-SEARCH-004
title: Search admins with no matching results
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
| Endpoint | `GET https://seyanty.info/api/dashboard/admins-search` |
| Content-Type | `application/json` |
| Authorization | `Bearer <valid_token>` |
| Query Parameters | `key=zzzzzzzz&pagination=on&page=1&limit=10` |

# Preconditions
- User is logged in to the dashboard as an admin with a valid token.
- No admin name matches the query `zzzzzzzz`.

# Steps
1. Send a `GET` request to `https://seyanty.info/api/dashboard/admins-search?key=zzzzzzzz&pagination=on&page=1&limit=10`.
2. Set header `Authorization: Bearer <valid_token>`.
3. Set header `Content-Type: application/json`.
4. Send the request and capture the response.

# Expected Result
- The API returns HTTP status code `200 OK`.
- `data` is an empty array `[]`.
- `pagination.total` is `0`, `isEmpty` is `true`, and `hasPages` is `false`.

# Notes

# Attachments
