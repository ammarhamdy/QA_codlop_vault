---
tc_id: TC-API-DASH-ADMIN-DELETE-003
title: Delete an admin with a missing identifier
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
| Endpoint | `DELETE https://seyanty.info/api/dashboard/admins/` *(no id)* |
| Path Variable | `id` = *(omitted)* |
| Content-Type | `application/json` |
| Authorization | `Bearer <valid_token>` |

# Preconditions
- User is logged in to the dashboard as a privileged admin with a valid token.

# Steps
1. Send a `DELETE` request to `https://seyanty.info/api/dashboard/admins/` without an `id` in the path.
2. Set header `Authorization: Bearer <valid_token>`.
3. Set header `Content-Type: application/json`.
4. Send the request and capture the response.

# Expected Result
- The API returns an error status code (`404 Not Found` for an unmatched route, or `422`/`400` if the route resolves with a missing required parameter).
- Response body indicates the route/identifier is missing (e.g., `"Route not found"` or a validation message for the required `id`).
- No admin record is deleted.

# Notes
- Exact behavior depends on backend routing; the identifier is a required path parameter.

# Attachments
