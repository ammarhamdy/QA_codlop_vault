---
tc_id: TC-API-DASH-ADMIN-STATUS-012
title: Verify the response status code for update admin status
priority:
  - Medium
status:
  - completed
type:
  - API
linked_requirement: REQ-API-DASH-ADMIN-STATUS
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://seyanty.info/api/dashboard/admins/update-status/{id}` |
| Path Variable | `id` = existing admin id (e.g., `22`) |
| Content-Type | `application/json` |
| Authorization | `Bearer <valid_token>` |

# Preconditions
- User is logged in to the dashboard as a privileged admin with a valid token.
- An admin record with the given `id` exists.

# Steps
1. Send a `POST` request to `https://seyanty.info/api/dashboard/admins/update-status/22` with a valid token.
2. Capture the raw HTTP response status code.
3. Compare the actual status code against the documented expected status codes.

# Expected Result
- Success scenario returns HTTP status code `200 OK`.
- Non-existent admin returns `404 Not Found`.
- Authentication failures return `401 Unauthorized` with `"لابد من تسجيل الدخول أولا"`.
- Authorization failures return `403 Forbidden`.
- The status code is consistent with the endpoint's documented contract and the response body `code` field.

# Notes

# Attachments