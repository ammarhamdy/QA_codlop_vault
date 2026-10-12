---
tc_id: TC-API-DASH-EMP-SEARCH-016
title: Response Status Code
priority: High
status:
  - Ready
type: Functional
linked_requirement: REQ-DASH-EMP-SEARCH-016
tags:
  - test-case
  - api
  - dashboard
  - employees
  - search
  - validation
  - response
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
5. Capture response status code
6. Validate HTTP status code is exactly 200 OK

# Expected Result
- **HTTP Status Code:** 200 OK
- **Validation:** Response status code MUST be exactly 200 (not 201, 202, 204, etc.)
- **Negative Assertions:** Status code is NOT 400, 401, 403, 404, 500, or any other code

# Notes
- Validates correct HTTP status code for successful search
- Ensures API follows REST conventions for GET requests
- Status code verification is fundamental for API contract compliance

# Attachments/Script
```bash
curl --location --request GET 'https://seyanty.info/api/dashboard/employees/search?key=employee-10&pagination=on&limit=100&page=1' \
--header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
--header 'Authorization: Bearer <valid-token>' \
--header 'Accept: */*' \
--header 'Host: seyanty.info' \
--header 'Connection: keep-alive' \
--write-out 'HTTP Status: %{http_code}\n'
```

---
*Last Updated: 2026-08-23 10:00:00*