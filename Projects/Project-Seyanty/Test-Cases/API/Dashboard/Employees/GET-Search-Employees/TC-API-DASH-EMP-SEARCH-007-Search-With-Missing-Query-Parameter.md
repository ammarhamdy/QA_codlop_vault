---
tc_id: TC-API-DASH-EMP-SEARCH-007
title: Search With Missing Query Parameter
priority: Medium
status:
type: Functional
linked_requirement: REQ-DASH-EMP-SEARCH-007
tags:
  - test-case
  - api
  - dashboard
  - employees
  - search
  - negative
  - validation
---

# Test Data
| Field | Value |
| ----- | ----- |
| pagination | on |
| limit | 100 |
| page | 1 |
| Authorization | Bearer <valid_token> |

# Preconditions
- Valid authentication token is available
- API endpoint is accessible and operational
- 'key' query parameter is omitted entirely (not even empty string)

# Steps
1. Prepare GET request to `/api/dashboard/employees/search` with query parameters: `pagination=on`, `limit=100`, `page=1` (NO 'key' parameter)
2. Set Authorization header with valid Bearer token
3. Set Accept header to `*/*`
4. Execute the request
5. Capture response status code, headers, and body
6. Validate behavior when required query parameter is missing

# Expected Result
- **HTTP Status Code:** 400 Bad Request (or 200 OK if key is optional)
- **Response Headers:** Content-Type: application/json
- **Response Body (if 400):**
```json
{
    "status": "error",
    "code": 400,
    "message": "The key field is required",
    "data": null
}
```
- **Response Body (if 200 - key is optional):**
```json
{
    "status": "success",
    "code": 200,
    "message": "",
    "data": [
        // Returns all employees (paginated)
    ],
    "pagination": {
        "current_page": 1,
        "first_page_url": 1,
        "last_page": 1,
        "last_page_url": 1,
        "next_page_url": null,
        "path": "https://seyanty.info/api/dashboard/employees/search",
        "per_page": 100,
        "prev_page_url": null,
        "total": 50,
        "isEmpty": false,
        "isNotEmpty": true,
        "hasMorePages": false,
        "hasPages": false
    }
}
```
- **Database Assertions:** Validates API behavior when required parameter is omitted

# Notes
- Tests validation of required query parameter 'key'
- API may treat 'key' as required or optional - document actual behavior
- If optional, should behave same as empty query test case

# Attachments/Script
```bash
curl --location --request GET 'https://seyanty.info/api/dashboard/employees/search?pagination=on&limit=100&page=1' \
--header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
--header 'Authorization: Bearer <valid-token>' \
--header 'Accept: */*' \
--header 'Host: seyanty.info' \
--header 'Connection: keep-alive'
```

---
*Last Updated: 2026-08-23 10:00:00*