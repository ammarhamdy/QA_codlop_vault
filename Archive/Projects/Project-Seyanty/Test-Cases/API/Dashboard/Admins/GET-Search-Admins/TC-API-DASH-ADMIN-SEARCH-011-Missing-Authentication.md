---
tc_id: TC-API-DASH-ADMIN-SEARCH-011
title: Search admins without authentication
priority:
  - High
status:
  - completed
type:
  - API
linked_requirement: REQ-API-DASH-ADMIN-SEARCH
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `GET https://seyanty.info/api/dashboard/admins-search` |
| Content-Type | `application/json` |
| Authorization | *(omitted)* |
| Query Parameters | `key=ali&pagination=on&page=1&limit=10` |

# Preconditions
- No `Authorization` header is sent with the request.

# Steps
1. Send a `GET` request to `https://seyanty.info/api/dashboard/admins-search?key=ali&pagination=on&page=1&limit=10`.
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
- No search results are returned.

# Notes
- Exact error message may vary by backend; focus on the HTTP status code.

# Attachments
