---
tc_id: TC-API-DASH-EMP-SEARCH-010
title: Search Case Sensitivity
priority: Medium
status:
  - Ready
type: Functional
linked_requirement: REQ-DASH-EMP-SEARCH-010
tags:
  - test-case
  - api
  - dashboard
  - employees
  - search
  - functional
  - case-sensitivity
run_result: Pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| key | EMPLOYEE-10 |
| pagination | on |
| limit | 100 |
| page | 1 |
| Authorization | Bearer <valid_token> |

# Preconditions
- Valid authentication token is available
- Employee with name "employee-10.1" (lowercase) exists in the database
- No employee exists with uppercase name "EMPLOYEE-10.1"
- API endpoint is accessible and operational

# Steps
1. Prepare GET request to `/api/dashboard/employees/search` with query parameters: `key=EMPLOYEE-10`, `pagination=on`, `limit=100`, `page=1`
2. Set Authorization header with valid Bearer token
3. Set Accept header to `*/*`
4. Execute the request
5. Capture response status code, headers, and body
6. Validate case sensitivity behavior (case-insensitive vs case-sensitive search)
7. Compare results with lowercase search "employee-10"

# Expected Result
- **HTTP Status Code:** 200 OK
- **Response Headers:** Content-Type: application/json
- **Response Body (if case-insensitive - expected):**
```json
{
    "status": "success",
    "code": 200,
    "message": "",
    "data": [
        {
            "id": 63,
            "name": "employee-10.1",
            "email": "employee-10@mail.com",
            "phone": "0500000110",
            "photo": "https://seyanty.info/storage/employees/zy0RHyVmKiz1KoWP9jsxRfrIpd4qL8BRNLJ0hRkA.jpg",
            "job_title": "engineer",
            "overview": null,
            "status": "inactive",
            "is_blocked": "active",
            "orders_count": null
        }
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
        "total": 1,
        "isEmpty": false,
        "isNotEmpty": true,
        "hasMorePages": false,
        "hasPages": false
    }
}
```
- **Response Body (if case-sensitive):**
```json
{
    "status": "success",
    "code": 200,
    "message": "",
    "data": [],
    "pagination": {
        "current_page": 1,
        "first_page_url": 1,
        "last_page": 1,
        "last_page_url": 1,
        "next_page_url": null,
        "path": "https://seyanty.info/api/dashboard/employees/search",
        "per_page": 100,
        "prev_page_url": null,
        "total": 0,
        "isEmpty": true,
        "isNotEmpty": false,
        "hasMorePages": false,
        "hasPages": false
    }
}
```
- **Assertion:** Document whether search is case-sensitive or case-insensitive; results should be consistent

# Notes
- Validates case sensitivity behavior of search functionality
- Expected behavior: case-insensitive search (more user-friendly)
- Results should match lowercase search query "employee-10"

# Attachments/Script
```bash
curl --location --request GET 'https://seyanty.info/api/dashboard/employees/search?key=EMPLOYEE-10&pagination=on&limit=100&page=1' \
--header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
--header 'Authorization: Bearer <valid-token>' \
--header 'Accept: */*' \
--header 'Host: seyanty.info' \
--header 'Connection: keep-alive'
```

---
*Last Updated: 2026-08-23 10:00:00*