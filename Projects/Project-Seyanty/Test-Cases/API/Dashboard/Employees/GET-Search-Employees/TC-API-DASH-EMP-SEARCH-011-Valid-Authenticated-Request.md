---
tc_id: TC-API-DASH-EMP-SEARCH-011
title: Valid Authenticated Request
priority: Critical
status:
type: Functional
linked_requirement: REQ-DASH-EMP-SEARCH-011
tags:
  - test-case
  - api
  - dashboard
  - employees
  - search
  - authentication
  - positive
  - security
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
- Valid authentication token is available and not expired
- Token has necessary permissions to access dashboard employees search
- Employee records exist matching the search query
- API endpoint is accessible and operational

# Steps
1. Prepare GET request to `/api/dashboard/employees/search` with query parameters: `key=employee-10`, `pagination=on`, `limit=100`, `page=1`
2. Set Authorization header with valid Bearer token
3. Set Accept header to `*/*`
4. Execute the request
5. Capture response status code, headers, and body
6. Validate successful authenticated access

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
- **Security Assertions:** Valid token grants access; response contains expected employee data

# Notes
- Baseline test for valid authentication flow
- Confirms token-based authentication works correctly for this endpoint
- Should be run before all negative authentication test cases

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