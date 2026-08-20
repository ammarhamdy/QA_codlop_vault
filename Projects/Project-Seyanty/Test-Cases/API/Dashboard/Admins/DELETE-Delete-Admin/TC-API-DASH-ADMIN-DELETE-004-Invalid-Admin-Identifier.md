---
tc_id: TC-API-DASH-ADMIN-DELETE-004
title: Delete an admin with an invalid identifier
priority:
  - High
status:
  - completed
type:
  - API
linked_requirement: REQ-API-DASH-ADMIN-DELETE
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `DELETE https://seyanty.info/api/dashboard/admins/{id}` |
| Path Variable | `id` = invalid value (e.g., `abc`, `-1`, `0`, `12.5`) |
| Content-Type | `application/json` |
| Authorization | `Bearer <valid_token>` |

# Preconditions
- User is logged in to the dashboard as a privileged admin with a valid token.

# Steps
1. Send a `DELETE` request to `https://seyanty.info/api/dashboard/admins/abc` (repeat with `-1`, `0`, and `12.5`).
2. Set header `Authorization: Bearer <valid_token>`.
3. Set header `Content-Type: application/json`.
4. Send the request and capture the response.

# Expected Result
- The API returns an error status code (`400 Bad Request` for a malformed identifier, or `404 Not Found` if no admin matches the identifier).
- Response body indicates the identifier is invalid or the admin does not exist.
- No admin record is deleted.

# Notes

# Attachments
