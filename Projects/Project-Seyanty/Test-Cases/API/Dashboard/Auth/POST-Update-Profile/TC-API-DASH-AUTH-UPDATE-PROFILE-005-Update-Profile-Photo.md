---
tc_id: TC-API-DASH-AUTH-UPDATE-PROFILE-005
title: Update Profile Photo
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
| Field         | Value                   |
| ------------- | ----------------------- |
| URL           | /api/dashboard/profile |
| Method        | POST                    |
| Authorization | Bearer {valid_token}    |
| photo         | {valid image file}      |

# Preconditions
- An active admin session token is available.
- A valid image file is prepared (e.g. JPG, PNG under the allowed size).

# Steps
1. Send a POST request to `https://seyanty.info/api/dashboard/profile`.
2. Set header `Accept: application/json`.
3. Set header `Authorization: Bearer {valid_token}`.
4. Upload a valid image file in the `photo` field.
5. Submit the request.
6. Observe the response.

# Expected Result
- The profile photo is updated successfully.
- `status` is `success`.
- The new photo URL appears in the profile.

# Notes
- Only the photo field is changed.

# Attachments