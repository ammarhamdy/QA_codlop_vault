---
tc_id: TC-API-DASH-AUTH-UPDATE-PROFILE-003
title: Update Email
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
| name          | admin-1                 |
| email         | admin-new@mail.com      |

# Preconditions
- An active admin session token is available.
- The new email is not used by another account.

# Steps
1. Send a POST request to `https://seyanty.info/api/dashboard/profile`.
2. Set header `Accept: application/json`.
3. Set header `Authorization: Bearer {valid_token}`.
4. Send a new valid, unused `email`.
5. Submit the request.
6. Observe the response.

# Expected Result
- The profile email is updated successfully.
- `status` is `success`.
- The new email appears in the profile.

# Notes
- Only the email field is changed.

# Attachments