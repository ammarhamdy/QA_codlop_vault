---
tc_id: TC-API-DASH-ADMIN-SEARCH-012
title: Search admins with invalid authentication
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
| Authorization | `Bearer <invalid_token>` |
| Query Parameters | `key=ali&pagination=on&page=1&limit=10` |

# Preconditions
- A malformed/fabricated token (e.g., `invalid-token-123`) is used as the bearer token.

# Steps
1. Send a `GET` request to `https://seyanty.info/api/dashboard/admins-search?key=ali&pagination=on&page=1&limit=10`.
2. Set header `Authorization: Bearer <invalid_token>`.
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
