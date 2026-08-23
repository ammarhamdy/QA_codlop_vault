---
tc_id: TC-API-DASH-ADMIN-GET-003
title: Get all admins without authentication
priority:
  - High
status:
  - completed
type:
  - API
linked_requirement: REQ-API-DASH-ADMIN-GET
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `GET https://seyanty.info/api/dashboard/admins` |
| Content-Type | `application/json` |
| Authorization | *(omitted)* |
| Query Parameters | `pagination=on&page=1&limit=10` |

# Preconditions
- No `Authorization` header is sent with the request.

# Steps
1. Send a `GET` request to `https://seyanty.info/api/dashboard/admins?pagination=on&page=1&limit=10`.
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
- No admin data is returned.

# Notes
- Exact error message may vary by backend; focus on the HTTP status code.

# Attachments
```sh
curl --location --request GET 'https://seyanty.info/api/dashboard/admins?pagination=on&page=1&limit=1' \
--header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
--header 'Authorization: Bearer INVALID-TOKEN' \
--header 'Accept: */*' \
--header 'Host: seyanty.info' \
--header 'Connection: keep-alive'
```