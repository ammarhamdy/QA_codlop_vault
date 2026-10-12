---
tc_id: TC-API-DASH-EMP-GET-003
title: Missing Authentication
priority: High
status:
  - completed
type: Functional
linked_requirement: REQ-DASH-EMP-003
tags:
  - test-case
  - api
  - dashboard
  - employees
  - authentication
  - negative
  - security
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | GET https://seyanty.info/api/dashboard/employees |
| Authentication | None (Missing Authorization header) |
| Query Parameters | pagination=on, limit=100, page=1, status= |
| Content-Type | application/json |

# Preconditions
- API server is running
- No valid token is provided in request
- Endpoint requires authentication (protected route)

# Steps
1. Construct GET request to `/api/dashboard/employees` with standard query parameters
2. **Do not include** Authorization header
3. Include other headers: `Accept: application/json`, `Content-Type: application/json`
4. Execute the request
5. Capture response status code and body
6. Verify authentication error response

# Expected Result
**HTTP Status Code:** 401 Unauthorized

**Response Headers:**
- Content-Type: application/json
- WWW-Authenticate: Bearer (may be present)

**Response Body:**
```json
{
    "status": "error",
    "code": 401,
    "message": "لابد من تسجيل الدخول أولا",
    "data": null
}
```

**Validation Checks:**
- Response status is "error"
- Response code is 401
- Response message is Arabic: "لابد من تسجيل الدخول أولا" (Must login first)
- Data field is null
- No employee data is leaked in response

# Notes
- Critical security test - ensures endpoint is protected
- Arabic error message is expected per API specification
- Should not return 404 (which would indicate endpoint exists but not found)
- Tests authentication middleware enforcement

# Attachments
- cURL command without Authorization header
- Expected error response

```shell
#!/usr/bin/env bash

BASE_URL="https://seyanty.info/api/dashboard"

# Test: Missing Authentication (no Authorization header)
echo "Testing GET employees without authentication..."
curl --silent --location --request GET "https://seyanty.info/api/dashboard/employees?pagination=on&limit=100&page=1" \
  --header "Accept: application/json" \
  --header "Content-Type: application/json" | jq

```
---

*Last Updated: 2026-08-23*