---
tc_id: TC-API-DASH-EMP-DELETE-015
title: Invalid HTTP Method
priority: Medium
status:
type: Functional
linked_requirement: REQ-DASH-EMP-015
tags:
  - test-case
  - delete-employee
  - http-method
  - validation
  - api
---

# Test Data
| Field | Value |
| ----- | ----- |
| endpoint | GET/POST/PUT/PATCH https://seyanty.info/api/dashboard/employees/:id |
| employee_id | Valid existing employee ID (e.g., 123) |
| auth_token | Valid Bearer token for authenticated dashboard user |
| expected_status | 405 |

# Preconditions
- Employee with ID `123` exists in database
- Valid authentication token available
- Only DELETE method should be allowed for this endpoint

# Steps
1. Prepare GET request to `https://seyanty.info/api/dashboard/employees/123` with valid auth
2. Send GET request and capture response
3. Prepare POST request to same endpoint with valid auth
4. Send POST request and capture response
5. Prepare PUT request to same endpoint with valid auth
6. Send PUT request and capture response
7. Prepare PATCH request to same endpoint with valid auth
8. Send PATCH request and capture response
9. Verify all non-DELETE methods return 405

# Expected Result
- HTTP Status Code: 405 Method Not Allowed (for GET, POST, PUT, PATCH)
- Response Headers: Content-Type: application/json, Allow: DELETE
- Response Body:
```json
{
    "status": "error",
    "code": 405,
    "message": "الطريقة غير مسموحة",
    "data": null
}
```
- No database changes for any invalid method

# Notes
- Tests HTTP method restriction enforcement
- Allow header should indicate DELETE as only permitted method
- Arabic message "الطريقة غير مسموحة" for method not allowed

# Attachments/Script
```bash
# GET (should fail)
curl --location --request GET 'https://seyanty.info/api/dashboard/employees/123' \
--header 'Authorization: Bearer <valid-token>'

# POST (should fail)
curl --location --request POST 'https://seyanty.info/api/dashboard/employees/123' \
--header 'Authorization: Bearer <valid-token>'

# PUT (should fail)
curl --location --request PUT 'https://seyanty.info/api/dashboard/employees/123' \
--header 'Authorization: Bearer <valid-token>'

# PATCH (should fail)
curl --location --request PATCH 'https://seyanty.info/api/dashboard/employees/123' \
--header 'Authorization: Bearer <valid-token>'
```

---
*Last Updated: 2026-08-23 10:51*