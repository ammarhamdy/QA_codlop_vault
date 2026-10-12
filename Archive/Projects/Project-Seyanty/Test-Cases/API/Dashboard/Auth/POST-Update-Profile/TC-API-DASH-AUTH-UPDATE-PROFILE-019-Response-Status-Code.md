---
tc_id: TC-API-DASH-AUTH-UPDATE-PROFILE-019
title: Response Status Code
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
| Method        | POST                     |
| Authorization | Bearer {valid_token}     |

# Preconditions
- An active admin session token is available.

# Steps
1. Send a POST request to `https://seyanty.info/api/dashboard/profile`.
2. Set header `Accept: application/json`.
3. Set header `Authorization: Bearer {valid_token}`.
4. Submit valid profile fields.
5. Inspect the HTTP status code.

# Expected Result
- Successful update returns HTTP status code `200`.
- Validation failures return HTTP status code `422`.
- Unauthenticated requests return HTTP status code `401`.

# Notes
- Status codes must match the documented API behavior.

# Attachments