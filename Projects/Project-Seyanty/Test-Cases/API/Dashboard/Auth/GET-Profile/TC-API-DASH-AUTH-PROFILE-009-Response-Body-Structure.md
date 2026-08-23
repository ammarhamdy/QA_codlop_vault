---
tc_id: TC-API-DASH-AUTH-PROFILE-009
title: Response Body Structure
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
5. Inspect the JSON structure of the response body.

# Expected Result
- The response contains `status`, `code`, `message`, and `data` keys.
- On success `status` is `success` and `data` holds the profile object.
- On failure `status` is `error` and `data` is `null`.

# Notes
- Validate the schema against the API documentation.

# Attachments