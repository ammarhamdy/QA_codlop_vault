---
tc_id: TC-API-DASH-AUTH-PROFILE-012
title: Unauthorized Profile Access
priority:
  - Medium
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
| Field         | Value                        |
| ------------- | ---------------------------- |
| URL           | /api/dashboard/profile      |
| Method        | GET                          |
| Authorization | Bearer {token_of_another_user} |

# Preconditions
- A token belonging to a different user is used.
- No id parameter is provided in the request.

# Steps
1. Send a GET request to `https://seyanty.info/api/dashboard/profile` using another user's token.
2. Set header `Accept: application/json`.
3. Set header `Authorization: Bearer {token_of_another_user}`.
4. Submit the request.
5. Observe the response.

# Expected Result
- The endpoint returns only the profile of the token holder.
- No other user's data is exposed.

# Notes
- Users cannot access profiles of other accounts through this endpoint.

# Attachments