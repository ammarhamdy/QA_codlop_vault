---
tc_id: TC-API-DASH-AUTH-PROFILE-002
title: Valid Authenticated Request
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
| Field         | Value                    |
| ------------- | ------------------------ |
| URL           | /api/dashboard/profile  |
| Method        | GET                      |
| Authorization | Bearer {valid_token}     |

# Preconditions
- An active admin session token is available.

# Steps
1. Send a GET request to `https://seyanty.info/api/dashboard/profile`.
2. Set header `Accept: application/json`.
3. Set header `Authorization: Bearer {valid_token}`.
4. Submit the request.
5. Observe the response.

# Expected Result
- The request succeeds with HTTP status code `200`.
- `status` is `success`.
- The profile data of the authenticated admin is returned.

# Notes
- Verifies the happy path with a valid token.

# Attachments