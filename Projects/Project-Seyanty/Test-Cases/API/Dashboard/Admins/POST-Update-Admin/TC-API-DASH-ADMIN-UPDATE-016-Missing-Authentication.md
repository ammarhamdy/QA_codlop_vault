---
tc_id: TC-API-DASH-ADMIN-UPDATE-016
title: Update admin without authentication
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
| Path Variable | `id` = existing admin id (e.g., `16`) |
| Content-Type | `multipart/form-data` |
| Authorization | *(omitted)* |
| _method | `put` |

# Preconditions
- No `Authorization` header is sent with the request.

# Steps
1. Send a `POST` request to `https://seyanty.info/api/dashboard/admins/16`.
2. Do NOT include the `Authorization` header.
3. Set header `Content-Type: multipart/form-data`.
4. Add form fields `_method=put`, `name`, and `email`.
5. Send the request and capture the response.

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
- No admin record is modified.

# Notes
- Exact error message may vary by backend; focus on the HTTP status code.

# Attachments