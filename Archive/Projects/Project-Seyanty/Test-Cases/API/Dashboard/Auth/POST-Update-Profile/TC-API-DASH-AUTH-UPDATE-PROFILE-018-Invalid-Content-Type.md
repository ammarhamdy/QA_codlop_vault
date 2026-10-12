---
tc_id: TC-API-DASH-AUTH-UPDATE-PROFILE-018
title: Invalid Content-Type
priority:
  - Low
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
| Field         | Value                      |
| ------------- | -------------------------- |
| URL           | /api/dashboard/profile    |
| Method        | POST                       |
| Content-Type  | application/xml           |
| Authorization | Bearer {valid_token}       |

# Preconditions
- An active admin session token is available.

# Steps
1. Send a POST request to `https://seyanty.info/api/dashboard/profile`.
2. Set header `Accept: application/json`.
3. Set header `Content-Type: application/xml`.
4. Set header `Authorization: Bearer {valid_token}`.
5. Submit the request.
6. Observe the response.

# Expected Result
- The request is handled without a server error.
- If the content type is unsupported, an error response is returned.

# Notes
- Confirm expected behavior with the API implementation.

# Attachments