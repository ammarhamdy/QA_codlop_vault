---
tc_id: TC-API-DASH-ADMIN-SEARCH-003
title: Search admins by partial admin name
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
| Field | Value |
| ----- | ----- |
| Endpoint | `GET https://seyanty.info/api/dashboard/admins-search` |
| Content-Type | `application/json` |
| Authorization | `Bearer <valid_token>` |
| Query Parameters | `key=ad&pagination=on&page=1&limit=10` |

# Preconditions
- User is logged in to the dashboard as an admin with a valid token.
- At least one admin name contains the substring `ad`.

# Steps
1. Send a `GET` request to `https://seyanty.info/api/dashboard/admins-search?key=ad&pagination=on&page=1&limit=10`.
2. Set header `Authorization: Bearer <valid_token>`.
3. Set header `Content-Type: application/json`.
4. Send the request and capture the response.

# Expected Result
- The API returns HTTP status code `200 OK`.
- The `data` array contains all admins whose names contain the partial substring `ad`.
- `pagination.total` equals the number of admins matching the partial query.

# Notes

# Attachments
