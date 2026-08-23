---
tc_id: TC-API-DASH-EMP-SEARCH-021
title: Invalid HTTP Method
priority: Medium
status:
type: Functional
linked_requirement: REQ-DASH-EMP-SEARCH-021
tags:
  - test-case
  - api
  - dashboard
  - employees
  - search
  - negative
  - http-method
  - validation
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
- API endpoint is accessible and operational
- Endpoint only supports GET method

# Steps
1. Prepare POST request to `/api/dashboard/employees/search` with query parameters: `key=employee-10`, `pagination=on`, `limit=100`, `page=1`
2. Set Authorization header with valid Bearer token
3. Set Accept header to `*/*`
4. Execute the request
5. Capture response status code, headers, and body
6. Validate that POST method is rejected
7. Repeat for PUT, PATCH, DELETE methods

# Expected Result
- **HTTP Status Code:** 405 Method Not Allowed
- **Response Headers:** Content-Type: application/json; Allow: GET
- **Response Body:**
```json
{
    "status": "error",
    "code": 405,
    "message": "Method Not Allowed",
    "data": null
}
```
- **Alternative Response (if custom error format):**
```json
{
    "status": "error",
    "code": 405,
    "message": "The GET method is required for this endpoint",
    "data": null
}
```
- **Assertions:** All non-GET methods (POST, PUT, PATCH, DELETE) return 405; Allow header includes GET

# Notes
- Validates HTTP method restriction enforcement
- Ensures API follows REST conventions
- Prevents accidental data modification via wrong method

# Attachments/Script
```bash
# Test POST method
curl --location --request POST 'https://seyanty.info/api/dashboard/employees/search?key=employee-10&pagination=on&limit=100&page=1' \
--header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
--header 'Authorization: Bearer <valid-token>' \
--header 'Accept: */*' \
--header 'Host: seyanty.info' \
--header 'Connection: keep-alive'

# Test PUT method
curl --location --request PUT 'https://seyanty.info/api/dashboard/employees/search?key=employee-10&pagination=on&limit=100&page=1' \
--header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
--header 'Authorization: Bearer <valid-token>' \
--header 'Accept: */*' \
--header 'Host: seyanty.info' \
--header 'Connection: keep-alive'

# Test DELETE method
curl --location --request DELETE 'https://seyanty.info/api/dashboard/employees/search?key=employee-10&pagination=on&limit=100&page=1' \
--header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
--header 'Authorization: Bearer <valid-token>' \
--header 'Accept: */*' \
--header 'Host: seyanty.info' \
--header 'Connection: keep-alive'
```

---
*Last Updated: 2026-08-23 10:00:00*