---
tc_id: TC-API-DASH-AUTH-UPDATE-PROFILE-004
title: Update Phone
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
| phone         | +201111111111           |

# Preconditions
- An active admin session token is available.

# Steps
1. Send a POST request to `https://seyanty.info/api/dashboard/profile`.
2. Set header `Accept: application/json`.
3. Set header `Authorization: Bearer {valid_token}`.
4. Send a new valid `phone` value.
5. Submit the request.
6. Observe the response.

# Expected Result
- The profile phone is updated successfully.
- `status` is `success`.
- The new phone appears in the profile.

# Notes
- Only the phone field is changed.

# Attachments