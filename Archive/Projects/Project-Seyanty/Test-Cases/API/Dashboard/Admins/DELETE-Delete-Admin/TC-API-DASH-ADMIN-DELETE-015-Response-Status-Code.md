---
tc_id: TC-API-DASH-ADMIN-DELETE-015
title: Verify the response status code for delete admin
priority:
  - Medium
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
| Path Variable | `id` = existing admin id (e.g., `23`) |
| Content-Type | `application/json` |
| Authorization | `Bearer <valid_token>` |

# Preconditions
- User is logged in to the dashboard as a privileged admin with a valid token.
- An admin record with the given `id` exists.

# Steps
1. Send a `DELETE` request to `https://seyanty.info/api/dashboard/admins/23` with a valid token.
2. Capture the raw HTTP response status code.
3. Compare the actual status code against the documented expected status codes.

# Expected Result
- Success scenario returns HTTP status code `200 OK`.
- Non-existent admin returns `404 Not Found` with `"هذا الادمن غير موجود"`.
- Authentication failures return `401 Unauthorized`.
- Authorization failures return `403 Forbidden`.
- The status code is consistent with the endpoint's documented contract and the response body `code` field.

# Notes

# Attachments
