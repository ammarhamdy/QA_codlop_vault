---
tc_id: TC-API-DASH-AUTH-PROFILE-013
title: Sensitive Data Not Exposed
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
5. Inspect the response body for sensitive fields.

# Expected Result
- The response does not contain the password, hashed password, or any secret tokens.
- Only non-sensitive profile fields are returned.

# Notes
- Sensitive credentials must never be included in the response.

# Attachments