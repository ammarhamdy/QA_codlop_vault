---
tc_id: TC-API-DASH-AUTH-UPDATE-PROFILE-010
title: Invalid Phone
priority:
  - Medium
status:
  - closed
type:
  - API
linked_requirement: REQ-API-DASH-AUTH-PROFILE
tags:
  - test-case
run_result:
---

# Test Data
| Field         | Value                   |
| ------------- | ----------------------- |
| URL           | /api/dashboard/profile |
| Method        | POST                    |
| Authorization | Bearer {valid_token}    |
| name          | admin-1                 |
| email         | admin-1@mail.com        |
| phone         | abcdef                  |

# Preconditions
- An active admin session token is available.

# Steps
1. Send a POST request to `https://seyanty.info/api/dashboard/profile`.
2. Set header `Accept: application/json`.
3. Set header `Authorization: Bearer {valid_token}`.
4. Send `phone` with an invalid value.
5. Submit the request.
6. Observe the response.

# Expected Result
- The request fails with an error response.
- HTTP status code is `422`.
- `status` is `error`.
- A validation error message indicates the phone number is invalid.

# Notes
- Confirm the accepted phone format with the API documentation.

# Attachments