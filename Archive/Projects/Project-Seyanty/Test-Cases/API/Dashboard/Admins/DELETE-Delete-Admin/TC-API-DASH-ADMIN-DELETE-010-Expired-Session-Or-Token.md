---
tc_id: TC-API-DASH-ADMIN-DELETE-010
title: Delete an admin with an expired session or token
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
| Path Variable | `id` = existing admin id (e.g., `23`) |
| Content-Type | `application/json` |
| Authorization | `Bearer <expired_token>` |

# Preconditions
- The admin's session has expired or the token has passed its expiry time.
- An expired/revoked token is available for the test.

# Steps
1. Send a `DELETE` request to `https://seyanty.info/api/dashboard/admins/23`.
2. Set header `Authorization: Bearer <expired_token>`.
3. Set header `Content-Type: application/json`.
4. Send the request and capture the response.

# Expected Result
- The API returns HTTP status code `401 Unauthorized`.
- The request is rejected and no admin record is deleted.
- Response body indicates the token/session has expired.

# Notes
- Exact error message may vary by backend; focus on the HTTP status code and the absence of data changes.

# Attachments
