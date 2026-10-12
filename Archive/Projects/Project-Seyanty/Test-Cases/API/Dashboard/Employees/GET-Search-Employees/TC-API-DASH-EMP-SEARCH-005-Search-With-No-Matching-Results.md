---
tc_id: TC-API-DASH-EMP-SEARCH-005
title: Search With No Matching Results
priority: High
status:
  - Ready
type: Functional
linked_requirement: REQ-DASH-EMP-SEARCH-005
tags:
  - test-case
  - api
  - dashboard
  - employees
  - search
  - negative
  - empty-results
run_result: Fail
---

# Test Data
| Field | Value |
| ----- | ----- |
| key | nonexistent-employee-xyz |
| pagination | on |
| limit | 100 |
| page | 1 |
| Authorization | Bearer <valid_token> |

# Preconditions
- Valid authentication token is available
- No employee records exist in the database matching "nonexistent-employee-xyz"
- API endpoint is accessible and operational

# Steps
1. Prepare GET request to `/api/dashboard/employees/search` with query parameters: `key=nonexistent-employee-xyz`, `pagination=on`, `limit=100`, `page=1`
2. Set Authorization header with valid Bearer token
3. Set Accept header to `*/*`
4. Execute the request
5. Capture response status code, headers, and body
6. Validate empty results are handled correctly

# Expected Result
- **HTTP Status Code:** 200 OK
- **Response Headers:** Content-Type: application/json
- **Response Body:**
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
- **Database Assertions:** No records match the search query; data array is empty; total = 0; isEmpty = true

# Notes
- Validates graceful handling of zero-result searches
- Response should still return 200 OK with empty data array
- Pagination object should reflect zero total records

# Attachments/Script
```bash
curl --location --request GET 'https://seyanty.info/api/dashboard/employees/search?key=nonexistent-employee-xyz&pagination=on&limit=100&page=1' \
--header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
--header 'Authorization: Bearer <valid-token>' \
--header 'Accept: */*' \
--header 'Host: seyanty.info' \
--header 'Connection: keep-alive'
```

---
*Last Updated: 2026-08-23 10:00:00*