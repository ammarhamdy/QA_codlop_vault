---
tc_id: TC-API-DASH-ADMIN-UPDATE-010
title: Update admin with an invalid admin identifier
priority:
  - High
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
| Path Variable | `id` = invalid value (e.g., `abc`, `-1`, `0`, `12.5`) |
| Content-Type | `multipart/form-data` |
| Authorization | `Bearer <valid_token>` |
| _method | `put` |

# Preconditions
- User is logged in to the dashboard as a privileged admin with a valid token.

# Steps
1. Send a `POST` request to `https://seyanty.info/api/dashboard/admins/abc` (repeat with `-1`, `0`, and `12.5`).
2. Set header `Authorization: Bearer <valid_token>`.
3. Set header `Content-Type: multipart/form-data`.
4. Add form fields `_method=put`, `name`, and `email`.
5. Send the request and capture the response.

# Expected Result
- The API returns an error status code (`400 Bad Request` for a malformed identifier, or `404 Not Found` if no admin matches the identifier).
- Response body indicates the identifier is invalid or the admin does not exist.
- No admin record is modified.

# Notes

# Attachments