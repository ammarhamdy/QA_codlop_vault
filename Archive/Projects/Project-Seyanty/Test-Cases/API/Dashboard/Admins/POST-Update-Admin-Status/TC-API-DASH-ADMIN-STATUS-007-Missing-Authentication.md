---
tc_id: TC-API-DASH-ADMIN-STATUS-007
title: Update admin status without authentication
priority:
  - High
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
| Authorization | *(omitted)* |

# Preconditions
- No `Authorization` header is sent with the request.

# Steps
1. Send a `POST` request to `https://seyanty.info/api/dashboard/admins/update-status/22`.
2. Do NOT include the `Authorization` header.
3. Set header `Content-Type: application/json`.
4. Send the request and capture the response.

# Expected Result
- The API returns HTTP status code `401 Unauthorized`.
- Response body:
```json
{
    "status": "error",
    "code": 401,
    "message": "لابد من تسجيل الدخول أولا",
    "data": null
}
```
- No admin status is changed.

# Notes
- Exact error message may vary by backend; focus on the HTTP status code.

# Attachments