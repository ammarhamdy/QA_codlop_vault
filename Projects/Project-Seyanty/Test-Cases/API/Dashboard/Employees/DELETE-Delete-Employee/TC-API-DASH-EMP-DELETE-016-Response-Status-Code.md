---
tc_id: TC-API-DASH-EMP-DELETE-016
title: Response Status Code
priority: High
status:
  - Ready
type: API
linked_requirement: REQ-DASH-EMP-016
tags:
  - test-case
  - delete-employee
  - status-code
  - response-validation
  - api
run_result: Pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| endpoint | DELETE https://seyanty.info/api/dashboard/employees/:id |
| employee_id | Valid existing employee ID (e.g., 123) |
| auth_token | Valid Bearer token for authenticated dashboard user |
| expected_status | 200 |

# Preconditions
- Valid authentication token available for dashboard user
- Employee with ID `123` exists in database

# Steps
1. Prepare DELETE request to `https://seyanty.info/api/dashboard/employees/123` with valid auth
2. Send the DELETE request
3. Capture HTTP response status code
4. Verify exact status code is 200

# Expected Result
- HTTP Status Code: 200 OK (exact match)
- Not 201, 202, 204, or any other 2xx code
- Response must be 200 for successful deletion per API spec

# Notes
- Validates exact status code compliance with API specification
- Some APIs return 204 No Content for DELETE; this spec requires 200 with body
- Critical for client integration expecting specific status code

# Attachments/Script
```bash
curl --location --request DELETE 'https://seyanty.info/api/dashboard/employees/123' \
--header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
--header 'Authorization: Bearer <valid-token>' \
--header 'Accept: */*' \
--header 'Host: seyanty.info' \
--header 'Connection: keep-alive' \
--write-out '\nHTTP Status: %{http_code}\n'
```

---
*Last Updated: 2026-08-23 10:51*