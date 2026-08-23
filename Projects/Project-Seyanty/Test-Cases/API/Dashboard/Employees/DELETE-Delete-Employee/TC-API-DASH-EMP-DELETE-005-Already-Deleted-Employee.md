---
tc_id: TC-API-DASH-EMP-DELETE-005
title: Already Deleted Employee
priority: Medium
status:
type: Functional
linked_requirement: REQ-DASH-EMP-005
tags:
  - test-case
  - delete-employee
  - already-deleted
  - idempotency
  - api
---

# Test Data
| Field | Value |
| ----- | ----- |
| endpoint | DELETE https://seyanty.info/api/dashboard/employees/:id |
| employee_id | Previously deleted employee ID (e.g., 123 from TC-001) |
| auth_token | Valid Bearer token for authenticated dashboard user |
| expected_status | 404 |

# Preconditions
- Valid authentication token available for dashboard user
- Employee with ID `123` was previously deleted via successful DELETE request (TC-001)
- Employee record no longer exists in database

# Steps
1. Prepare DELETE request to `https://seyanty.info/api/dashboard/employees/123` (same ID as TC-001)
2. Include valid Authorization header
3. Send the DELETE request
4. Capture response status code, headers, and body
4. Verify response for attempting to delete already-deleted resource

# Expected Result
- HTTP Status Code: 404 Not Found
- Response Headers: Content-Type: application/json
- Response Body:
```json
{
    "status": "error",
    "code": 404,
    "message": "هذا الموظف غير موجود",
    "data": null
}
```
- No additional database changes (record already absent)

# Notes
- Tests idempotency behavior - DELETE on already-deleted resource returns 404
- Some APIs return 200 for idempotent DELETE; this spec expects 404
- Verifies consistent "not found" message for deleted resources

# Attachments/Script
```bash
curl --location --request DELETE 'https://seyanty.info/api/dashboard/employees/123' \
--header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
--header 'Authorization: Bearer <valid-token>' \
--header 'Accept: */*' \
--header 'Host: seyanty.info' \
--header 'Connection: keep-alive'
```

---
*Last Updated: 2026-08-23 10:51*