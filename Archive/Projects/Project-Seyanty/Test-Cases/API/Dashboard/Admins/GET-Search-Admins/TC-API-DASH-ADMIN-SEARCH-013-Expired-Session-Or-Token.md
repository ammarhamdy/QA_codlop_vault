---
tc_id: TC-API-DASH-ADMIN-SEARCH-013
title: Search admins with an expired session or token
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
| Authorization | `Bearer <expired_token>` |
| Query Parameters | `key=ali&pagination=on&page=1&limit=10` |

# Preconditions
- The admin's session has expired or the token has passed its expiry time.
- An expired/revoked token is available for the test.

# Steps
1. Send a `GET` request to `https://seyanty.info/api/dashboard/admins-search?key=ali&pagination=on&page=1&limit=10`.
2. Set header `Authorization: Bearer <expired_token>`.
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
