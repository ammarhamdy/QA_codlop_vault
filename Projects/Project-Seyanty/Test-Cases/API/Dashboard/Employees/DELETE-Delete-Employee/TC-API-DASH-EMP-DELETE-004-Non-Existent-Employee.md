---
tc_id: TC-API-DASH-EMP-DELETE-004
title: Non-Existent Employee
priority: High
status:
type: Functional
linked_requirement: REQ-DASH-EMP-004
tags:
  - test-case
  - delete-employee
  - not-found
  - api
---

# Test Data
| Field | Value |
| ----- | ----- |
| endpoint | DELETE https://seyanty.info/api/dashboard/employees/:id |
| employee_id | Non-existent valid numeric ID (e.g., 999999) |
| auth_token | Valid Bearer token for authenticated dashboard user |
| expected_status | 404 |

# Preconditions
- Valid authentication token available for dashboard user
- Employee ID `999999` (or any high numeric ID) does not exist in the database
- ID format is valid (positive integer) but record not found

# Steps
1. Prepare DELETE request to `https://seyanty.info/api/dashboard/employees/999999`
2. Include valid Authorization header
3. Send the DELETE request
4. Capture response status code, headers, and body
5. Verify 404 Not Found response with appropriate message

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
- No database changes (no record existed to delete)

# Notes
- Distinguishes between invalid format (TC-003) and valid format but non-existent record
- Verifies proper 404 handling for legitimate but missing resources
- Arabic message "هذا الموظف غير موجود" must match exactly

# Attachments/Script
```bash
curl --location --request DELETE 'https://seyanty.info/api/dashboard/employees/999999' \
--header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
--header 'Authorization: Bearer <valid-token>' \
--header 'Accept: */*' \
--header 'Host: seyanty.info' \
--header 'Connection: keep-alive'
```

---
*Last Updated: 2026-08-23 10:51*