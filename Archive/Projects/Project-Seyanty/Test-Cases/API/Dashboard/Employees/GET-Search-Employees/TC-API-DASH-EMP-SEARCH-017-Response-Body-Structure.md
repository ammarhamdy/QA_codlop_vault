---
tc_id: TC-API-DASH-EMP-SEARCH-017
title: Response Body Structure
priority: High
status:
  - Ready
type: Functional
linked_requirement: REQ-DASH-EMP-SEARCH-017
tags:
  - test-case
  - api
  - dashboard
  - employees
  - search
  - validation
  - response
  - schema
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
- Employee records exist matching the search query
- API endpoint is accessible and operational

# Steps
1. Prepare GET request to `/api/dashboard/employees/search` with query parameters: `key=employee-10`, `pagination=on`, `limit=100`, `page=1`
2. Set Authorization header with valid Bearer token
3. Set Accept header to `*/*`
4. Execute the request
5. Capture response body
6. Validate complete response structure against expected schema

# Expected Result
- **HTTP Status Code:** 200 OK
- **Response Headers:** Content-Type: application/json
- **Response Body Schema Validation:**
```json
{
    "status": "string (enum: success|error)",
    "code": "integer (HTTP status code)",
    "message": "string (empty on success, Arabic error message on failure)",
    "data": "array of employee objects or null",
    "pagination": "object with pagination metadata"
}
```
- **Employee Object Schema:**
```json
{
    "id": "integer",
    "name": "string",
    "email": "string (email format)",
    "phone": "string",
    "photo": "string (URL or null)",
    "job_title": "string",
    "overview": "string or null",
    "status": "string (enum: active|inactive)",
    "is_blocked": "string (enum: active|blocked)",
    "orders_count": "integer or null"
}
```
- **Pagination Object Schema:**
```json
{
    "current_page": "integer",
    "first_page_url": "integer or string",
    "last_page": "integer",
    "last_page_url": "integer or string",
    "next_page_url": "string or null",
    "path": "string (URL)",
    "per_page": "integer",
    "prev_page_url": "string or null",
    "total": "integer",
    "isEmpty": "boolean",
    "isNotEmpty": "boolean",
    "hasMorePages": "boolean",
    "hasPages": "boolean"
}
```
- **Assertions:** All fields present with correct types; enums match expected values; no extra unexpected fields

# Notes
- Validates complete response schema compliance
- Ensures API contract is maintained
- Critical for frontend integration and automated testing

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