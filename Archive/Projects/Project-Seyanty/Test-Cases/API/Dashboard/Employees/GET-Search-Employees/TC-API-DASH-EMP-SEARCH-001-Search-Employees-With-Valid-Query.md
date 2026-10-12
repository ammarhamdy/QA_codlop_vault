---
tc_id: TC-API-DASH-EMP-SEARCH-001
title: Search Employees With Valid Query
priority: High
status:
  - Ready
type: Functional
linked_requirement: REQ-DASH-EMP-SEARCH-001
tags:
  - test-case
  - api
  - dashboard
  - employees
  - search
  - positive
run_result: Pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| key | employee-10 |
| pagination | on |
| limit | 100 |
| page | 1 |
| Authorization | Bearer <valid_token> |

# Preconditions
- Valid authentication token is available
- At least one employee record exists in the database matching the search query "employee-10"
- Employee with name "employee-10.1" and email "employee-10@mail.com" exists in the system
- API endpoint is accessible and operational

# Steps
1. Prepare GET request to `/api/dashboard/employees/search` with query parameters: `key=employee-10`, `pagination=on`, `limit=100`, `page=1`
2. Set Authorization header with valid Bearer token
3. Set Accept header to `*/*`
4. Execute the request
5. Capture response status code, headers, and body
6. Validate response structure and data accuracy

# Expected Result
- **HTTP Status Code:** 200 OK
- **Response Headers:** Content-Type: application/json
- **Response Body:**
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
- **Database Assertions:** Employee record with id=63 exists and matches returned data

# Notes
- This is the primary positive test case for the search functionality
- Validates end-to-end search with all pagination parameters
- Response includes complete employee object with all expected fields

# Attachments/Script
```bash
curl --location --request GET 'https://seyanty.info/api/dashboard/employees/search?key=employee-10&pagination=on&limit=100&page=1' \
--header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
--header 'Authorization: Bearer <valid-token>' \
--header 'Accept: */*' \
--header 'Host: seyanty.info' \
--header 'Connection: keep-alive'
```

---
*Last Updated: 2026-08-23 10:00:00*