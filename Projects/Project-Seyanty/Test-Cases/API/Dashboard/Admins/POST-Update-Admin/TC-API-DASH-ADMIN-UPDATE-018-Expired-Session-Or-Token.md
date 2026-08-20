---
tc_id: TC-API-DASH-ADMIN-UPDATE-018
title: Update admin with an expired session or token
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
| Authorization | `Bearer <expired_token>` |
| _method | `put` |

# Preconditions
- The admin's session has expired or the token has passed its expiry time.
- An expired/revoked token is available for the test.

# Steps
1. Send a `POST` request to `https://seyanty.info/api/dashboard/admins/16`.
2. Set header `Authorization: Bearer <expired_token>`.
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