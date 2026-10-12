---
tc_id: TC-API-DASH-EMP-DELETE-020
title: Delete Employee With No Related Orders
priority: Medium
status:
  - Ready
type: Functional
linked_requirement: REQ-DASH-EMP-020
tags:
  - test-case
  - delete-employee
  - no-related-orders
  - clean-deletion
  - api
run_result: Pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| endpoint | DELETE https://seyanty.info/api/dashboard/employees/:id |
| employee_id | Employee with zero orders (e.g., 202) |
| auth_token | Valid Bearer token for authenticated dashboard user |
| expected_status | 200 |

# Preconditions
- Valid authentication token available for dashboard user
- Employee ID `202` exists with NO associated orders in `orders` table
- Employee may have other related data (contacts, attendance) but no orders

# Steps
1. Query orders table to confirm employee `202` has zero related orders
2. Prepare DELETE request to `https://seyanty.info/api/dashboard/employees/202`
3. Include valid Authorization header
4. Send the DELETE request
5. Capture response status code, headers, and body
6. Verify successful deletion
7. Query database to confirm clean removal

# Expected Result
- HTTP Status Code: 200 OK
- Response Headers: Content-Type: application/json
- Response Body:
```json
{
    "status": "success",
    "code": 200,
    "message": "تم حذف الموظف بنجاح",
    "data": []
}
```
- Database Assertion: Employee record permanently removed
- No order-related constraints to check (simpler deletion path)

# Notes
- Tests deletion of employee without order dependencies
- Should succeed without complications
- Baseline for comparison with TC-019 (with orders)

# Attachments/Script
```bash
curl --location --request DELETE 'https://seyanty.info/api/dashboard/employees/202' \
--header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
--header 'Authorization: Bearer <valid-token>' \
--header 'Accept: */*' \
--header 'Host: seyanty.info' \
--header 'Connection: keep-alive'
```

# Database Verification Queries
```sql
-- Pre-deletion: confirm no orders
SELECT COUNT(*) FROM orders WHERE employee_id = 202;
-- Expected: 0

-- Post-deletion: confirm employee gone
SELECT id FROM employees WHERE id = 202;
-- Expected: 0 rows
```

---
*Last Updated: 2026-08-23 10:51*