---
tc_id: TC-API-DASH-ADMIN-UPDATE-015
title: Update admin with an invalid profile photo
priority:
  - Medium
status:
  - completed
type:
  - API
linked_requirement: REQ-API-DASH-ADMIN-UPDATE
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://seyanty.info/api/dashboard/admins/{id}` |
| Path Variable | `id` = existing admin id (e.g., `16`) |
| Content-Type | `multipart/form-data` |
| Authorization | `Bearer <valid_token>` |
| _method | `put` |
| photo | invalid file (e.g., `.txt`, `.exe`, oversized) |

# Preconditions
- User is logged in to the dashboard as a privileged admin with a valid token.
- An admin record with the given `id` exists.

# Steps
1. Send a `POST` request to `https://seyanty.info/api/dashboard/admins/16`.
2. Set header `Authorization: Bearer <valid_token>`.
3. Set header `Content-Type: multipart/form-data`.
4. Attach an invalid photo file (wrong extension, non-image, or oversized).
5. Send the request and capture the response.

# Expected Result
- The API returns HTTP status code `400 Bad Request` or `422 Unprocessable Entity`.
- Response body contains a validation message for the invalid file type/size.
- The admin record and its photo are NOT modified.

# Notes

# Attachments