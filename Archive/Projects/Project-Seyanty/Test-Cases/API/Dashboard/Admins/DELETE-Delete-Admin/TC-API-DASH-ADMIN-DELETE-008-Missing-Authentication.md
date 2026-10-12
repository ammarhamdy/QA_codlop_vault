---
tc_id: TC-API-DASH-ADMIN-DELETE-008
title: Delete an admin without authentication
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
| Authorization | *(omitted)* |

# Preconditions
- No `Authorization` header is sent with the request.

# Steps
1. Send a `DELETE` request to `https://seyanty.info/api/dashboard/admins/23`.
2. Do NOT include the `Authorization` header.
3. Set header `Content-Type: application/json`.
4. Send the request and capture the response.

# Expected Result
- The API returns HTTP status code `401 Unauthorized`.
- The request is rejected and no admin record is deleted.
- Response body indicates missing/invalid authentication.

# Notes
- Exact error message may vary by backend; focus on the HTTP status code and the absence of data changes.

# Attachments
