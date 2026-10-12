---
tc_id: TC-API-DASH-EMP-SEARCH-009
title: Search With Long Query
priority: Medium
status:
  - Ready
type: Functional
linked_requirement: REQ-DASH-EMP-SEARCH-009
tags:
  - test-case
  - api
  - dashboard
  - employees
  - search
  - negative
  - boundary
  - validation
run_result: Fail
---

# Test Data
| Field | Value |
| ----- | ----- |
| key | aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa (256+ characters) |
| pagination | on |
| limit | 100 |
| page | 1 |
| Authorization | Bearer <valid_token> |

# Preconditions
- Valid authentication token is available
- API endpoint is accessible and operational
- Query string exceeds typical maximum length for search field

# Steps
1. Prepare GET request to `/api/dashboard/employees/search` with query parameters: `key=<256+ character string>`, `pagination=on`, `limit=100`, `page=1`
2. Set Authorization header with valid Bearer token
3. Set Accept header to `*/*`
4. Execute the request
5. Capture response status code, headers, and body
6. Validate handling of excessively long search queries

# Expected Result
- **HTTP Status Code:** 400 Bad Request (validation error) or 200 OK (with empty results)
- **Response Headers:** Content-Type: application/json
- **Response Body (400):**
```json
{
    "status": "error",
    "code": 400,
    "message": "Search query is too long",
    "data": null
}
```
- **Response Body (200 with empty results):**
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
- **Validation Assertions:** API enforces maximum length limit on search query; no buffer overflow or DoS vulnerability

# Notes
- Tests boundary condition for maximum query length
- Validates input length validation and DoS protection
- Document actual maximum allowed length for future reference

# Attachments/Script
```bash
curl --location --request GET 'https://seyanty.info/api/dashboard/employees/search?key=aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa&pagination=on&limit=100&page=1' \
--header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
--header 'Authorization: Bearer <valid-token>' \
--header 'Accept: */*' \
--header 'Host: seyanty.info' \
--header 'Connection: keep-alive'
```

---
*Last Updated: 2026-08-23 10:00:00*