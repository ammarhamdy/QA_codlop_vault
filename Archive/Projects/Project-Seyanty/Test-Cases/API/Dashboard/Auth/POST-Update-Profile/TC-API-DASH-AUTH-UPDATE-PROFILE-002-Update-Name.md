---
tc_id: TC-API-DASH-AUTH-UPDATE-PROFILE-002
title: Update Name
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
| name          | admin-2                 |
| email         | admin-1@mail.com        |

# Preconditions
- An active admin session token is available.

# Steps
1. Send a POST request to `https://seyanty.info/api/dashboard/profile`.
2. Set header `Accept: application/json`.
3. Set header `Authorization: Bearer {valid_token}`.
4. Send a new valid `name` with the existing `email`.
5. Submit the request.
6. Observe the response.

# Expected Result
- The profile name is updated successfully.
- `status` is `success`.
- The new name appears in the profile.

# Notes
- Only the name field is changed.

# Attachments