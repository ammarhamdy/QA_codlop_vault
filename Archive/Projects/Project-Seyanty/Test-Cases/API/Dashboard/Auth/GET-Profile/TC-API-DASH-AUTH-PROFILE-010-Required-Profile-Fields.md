---
tc_id: TC-API-DASH-AUTH-PROFILE-010
title: Required Profile Fields
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
5. Inspect the fields inside `data`.

# Expected Result
- `data` contains all required profile fields: `id`, `name`, `email`, `photo`, and `status`.
- No required field is missing or null.

# Notes
- Required fields must match the profile schema from the API documentation.

# Attachments