---
tc_id: TC-API-DASH-EMP-SEARCH-006
title: Search With Empty Query
priority: Medium
status:
  - Ready
type: Functional
linked_requirement: REQ-DASH-EMP-SEARCH-006
tags:
  - test-case
  - api
  - dashboard
  - employees
  - search
  - negative
  - boundary
run_result: Pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| key | (empty string) |
| pagination | on |
| limit | 100 |
| page | 1 |
| Authorization | Bearer <valid_token> |

# Preconditions
- Valid authentication token is available
- Multiple employee records exist in the database
- API endpoint is accessible and operational

# Steps
1. Prepare GET request to `/api/dashboard/employees/search` with query parameters: `key=`, `pagination=on`, `limit=100`, `page=1`
2. Set Authorization header with valid Bearer token
3. Set Accept header to `*/*`
4. Execute the request
5. Capture response status code, headers, and body
6. Validate behavior with empty search query

# Expected Result
- **HTTP Status Code:** 200 OK (or 400 Bad Request based on implementation)
- **Response Headers:** Content-Type: application/json
- **Response Body (if 200):**
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
- **Alternative Response Body (if 400):**
```json
{
    "status": "error",
    "code": 400,
    "message": "Search query is required",
    "data": null
}
```
- **Database Assertions:** If 200, returns paginated list of all employees; if 400, validates error message

# Notes
- Tests boundary condition with empty search key
- Behavior may vary: return all employees (paginated) or return validation error
- Document actual API behavior for future reference

# Attachments/Script
```bash
curl --location --request GET 'https://seyanty.info/api/dashboard/employees/search?key=&pagination=on&limit=100&page=1' \
--header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
--header 'Authorization: Bearer <valid-token>' \
--header 'Accept: */*' \
--header 'Host: seyanty.info' \
--header 'Connection: keep-alive'
```

---
*Last Updated: 2026-08-23 10:00:00*