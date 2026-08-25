---
tc_id: TC-API-DASH-EMP-SEARCH-008
title: Search With Special Characters
priority: Medium
status:
  - Ready
type: Functional
linked_requirement: REQ-DASH-EMP-SEARCH-008
tags:
  - test-case
  - api
  - dashboard
  - employees
  - search
  - negative
  - security
  - special-characters
run_result: Fail
---

# Test Data
| Field | Value |
| ----- | ----- |
| key | <script>alert('xss')</script> |
| pagination | on |
| limit | 100 |
| page | 1 |
| Authorization | Bearer <valid_token> |

# Preconditions
- Valid authentication token is available
- No employee records exist with names containing script tags or special characters
- API endpoint is accessible and operational

# Steps
1. Prepare GET request to `/api/dashboard/employees/search` with query parameters: `key=<script>alert('xss')</script>`, `pagination=on`, `limit=100`, `page=1`
2. Set Authorization header with valid Bearer token
3. Set Accept header to `*/*`
4. Execute the request
5. Capture response status code, headers, and body
6. Validate that special characters are handled safely (no XSS, proper encoding/escaping)

# Expected Result
- **HTTP Status Code:** 200 OK (with empty results) or 400 Bad Request (if validation rejects special chars)
- **Response Headers:** Content-Type: application/json
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
- **Response Body (400 validation error):**
```json
{
    "status": "error",
    "code": 400,
    "message": "Invalid search query",
    "data": null
}
```
- **Security Assertions:** No script execution; special characters are properly escaped/encoded in response; no SQL injection vulnerability

# Notes
- Tests input sanitization and XSS prevention
- Validates that special characters don't break the API or cause security issues
- Additional test cases should cover SQL injection attempts (', --, ;, etc.)

# Attachments/Script
```bash
curl --location --request GET 'https://seyanty.info/api/dashboard/employees/search?key=%3Cscript%3Ealert%28%27xss%27%29%3C%2Fscript%3E&pagination=on&limit=100&page=1' \
--header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
--header 'Authorization: Bearer <valid-token>' \
--header 'Accept: */*' \
--header 'Host: seyanty.info' \
--header 'Connection: keep-alive'
```

---
*Last Updated: 2026-08-23 10:00:00*