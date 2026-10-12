---
tc_id: TC-API-DASH-AUTH-UPDATE-PROFILE-007
title: Empty Required Field
priority:
  - High
status:
  - completed
type:
  - API
linked_requirement: REQ-API-DASH-AUTH-PROFILE
tags:
  - test-case
run_result: pass
---

# Test Data
| Field         | Value                   |
| ------------- | ----------------------- |
| URL           | /api/dashboard/profile |
| Method        | POST                    |
| Authorization | Bearer {valid_token}    |
| name          |                         |
| email         | admin-1@mail.com        |

# Preconditions
- An active admin session token is available.

# Steps
1. Send a POST request to `https://seyanty.info/api/dashboard/profile`.
2. Set header `Accept: application/json`.
3. Set header `Authorization: Bearer {valid_token}`.
4. Send a required field (`name`) as an empty string.
5. Submit the request.
6. Observe the response.

# Expected Result
- The request fails with an error response.
- HTTP status code is `422`.
- `status` is `error`.
- A validation error message indicates the field is required.

# Notes
- Empty values must be treated as missing.

# Attachments