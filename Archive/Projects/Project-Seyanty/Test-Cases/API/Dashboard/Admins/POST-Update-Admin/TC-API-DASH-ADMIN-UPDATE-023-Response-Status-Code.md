---
tc_id: TC-API-DASH-ADMIN-UPDATE-023
title: Verify the response status code for update admin
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

# Preconditions
- User is logged in to the dashboard as a privileged admin with a valid token.
- An admin record with the given `id` exists.

# Steps
1. Send a `POST` request to `https://seyanty.info/api/dashboard/admins/16` with valid form fields and a valid token.
2. Capture the raw HTTP response status code.
3. Compare the actual status code against the documented expected status codes.

# Expected Result
- Success scenario returns HTTP status code `200 OK`.
- Validation errors return `400 Bad Request` or `422 Unprocessable Entity`.
- Non-existent admin returns `404 Not Found` with `"Not Found"`.
- Authentication failures return `401 Unauthorized` with `"لابد من تسجيل الدخول أولا"`.
- Authorization failures return `403 Forbidden`.
- The status code is consistent with the endpoint's documented contract and the response body `code` field.

# Notes

# Attachments