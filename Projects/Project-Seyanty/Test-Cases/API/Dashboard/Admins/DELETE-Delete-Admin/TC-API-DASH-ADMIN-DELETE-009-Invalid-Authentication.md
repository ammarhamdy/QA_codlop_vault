---
tc_id: TC-API-DASH-ADMIN-DELETE-009
title: Delete an admin with invalid authentication
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
| Authorization | `Bearer <invalid_token>` |

# Preconditions
- A malformed/fabricated token (e.g., `invalid-token-123`) is used as the bearer token.

# Steps
1. Send a `DELETE` request to `https://seyanty.info/api/dashboard/admins/23`.
2. Set header `Authorization: Bearer <invalid_token>`.
3. Set header `Content-Type: application/json`.
4. Send the request and capture the response.

# Expected Result
- The API returns HTTP status code `401 Unauthorized`.
- The request is rejected and no admin record is deleted.
- Response body indicates invalid authentication credentials.

# Notes
- Exact error message may vary by backend; focus on the HTTP status code and the absence of data changes.

# Attachments
