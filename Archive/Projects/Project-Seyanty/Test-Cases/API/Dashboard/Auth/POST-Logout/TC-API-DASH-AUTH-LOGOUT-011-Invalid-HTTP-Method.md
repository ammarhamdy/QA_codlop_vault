---
tc_id: TC-API-DASH-AUTH-LOGOUT-011
title: Invalid HTTP Method
priority:
  - Medium
status:
  - completed
type:
  - API
linked_requirement: REQ-DASH-AUTH-002
tags:
  - test-case
run_result: pass
---

# Test Data
| Field            | Value                        |
| ---------------- | ---------------------------- |
| URL              | /api/dashboard/logout       |
| Method           | GET, PUT, DELETE             |
| Authorization    | Bearer {valid_token}         |

# Preconditions
- An active admin session token is available.

# Steps
1. Send a request to `https://seyanty.info/api/dashboard/logout` using GET, PUT, or DELETE instead of POST.
2. Set header `Accept: application/json`.
3. Set header `Authorization: Bearer {valid_token}`.
4. Submit the request.
5. Observe the response.

# Expected Result
- The request is rejected.
- HTTP status code is `405 Method Not Allowed`.
- `status` is `error`.

# Notes
- The logout endpoint must accept POST only.

# Attachments