---
tc_id: TC-API-DASH-EMP-DELETE-008
title: Verify Employee Removed
priority: High
status:
  - Ready
type: Functional
linked_requirement: REQ-DASH-EMP-008
tags:
  - test-case
  - delete-employee
  - verification
  - database
  - api
run_result: Pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| endpoint | DELETE https://seyanty.info/api/dashboard/employees/:id |
| employee_id | Valid existing employee ID (e.g., 101) |
| auth_token | Valid Bearer token for authenticated dashboard user |
| expected_status | 200 |

# Preconditions
- Valid authentication token available for dashboard user
- Employee with ID `101` exists in database
- Database query access available for verification

# Steps
1. Query database to confirm employee ID `101` exists before deletion
2. Prepare DELETE request to `https://seyanty.info/api/dashboard/employees/101`
3. Include valid Authorization header
4. Send the DELETE request
5. Capture response and verify 200 OK
6. Query database to confirm employee ID `101` no longer exists
7. Verify no orphaned references in related tables (per business rules)

# Expected Result
- HTTP Status Code: 200 OK
- Response Body:
```json
{
    "status": "success",
    "code": 200,
    "message": "تم حذف الموظف بنجاح",
    "data": []
}
```
- Database Assertion (Post-Deletion): 
  - `SELECT * FROM employees WHERE id = 101` returns 0 rows
  - No foreign key constraint violations
  - Related tables handle references per cascade/SET NULL/business rules

# Notes
- Direct database verification of deletion (beyond API response)
- Critical for confirming actual data removal vs. soft delete
- Should be paired with TC-001 as extended verification

# Attachments/Script
```bash
curl --location --request DELETE 'https://seyanty.info/api/dashboard/employees/101' \
--header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
--header 'Authorization: Bearer <valid-token>' \
--header 'Accept: */*' \
--header 'Host: seyanty.info' \
--header 'Connection: keep-alive'
```

# Database Verification Queries
```sql
-- Pre-deletion check
SELECT id, name, status FROM employees WHERE id = 101;

-- Post-deletion verification
SELECT id, name, status FROM employees WHERE id = 101;
-- Expected: 0 rows returned
```

---
*Last Updated: 2026-08-23 10:51*