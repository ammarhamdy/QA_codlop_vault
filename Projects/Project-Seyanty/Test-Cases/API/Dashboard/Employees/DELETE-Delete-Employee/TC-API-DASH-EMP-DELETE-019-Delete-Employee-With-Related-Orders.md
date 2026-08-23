---
tc_id: TC-API-DASH-EMP-DELETE-019
title: Delete Employee With Related Orders
priority: High
status:
type: Functional
linked_requirement: REQ-DASH-EMP-019
tags:
  - test-case
  - delete-employee
  - related-orders
  - business-rules
  - api
---

# Test Data
| Field | Value |
| ----- | ----- |
| endpoint | DELETE https://seyanty.info/api/dashboard/employees/:id |
| employee_id | Employee with active orders (e.g., 201) |
| auth_token | Valid Bearer token for authenticated dashboard user |
| expected_status | 200 or 409 |

# Preconditions
- Valid authentication token available for dashboard user
- Employee ID `201` exists with one or more associated orders in `orders` table
- Orders have various statuses (pending, completed, cancelled)

# Steps
1. Query orders table to confirm employee `201` has related orders
2. Document order IDs, statuses, and values
3. Prepare DELETE request to `https://seyanty.info/api/dashboard/employees/201`
4. Include valid Authorization header
5. Send the DELETE request
6. Capture response status code, headers, and body
7. Query orders table to verify post-deletion state
8. Verify business rule compliance for order handling

# Expected Result
## Scenario A: Deletion Allowed with Order Reassignment/Archival (200 OK)
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
- Database: Employee deleted, orders reassigned to default/admin user OR archived with employee_id SET NULL

## Scenario B: Deletion Blocked Due to Active Orders (409 Conflict)
- HTTP Status Code: 409 Conflict
- Response Body:
```json
{
    "status": "error",
    "code": 409,
    "message": "لا يمكن حذف الموظف لوجود طلبات مرتبطة به",
    "data": null
}
```
- Database: No changes, employee and orders preserved

# Notes
- Business rules determine exact behavior - document expected behavior
- Critical for data integrity and audit trail compliance
- May require soft-delete or cascade policies

# Attachments/Script
```bash
curl --location --request DELETE 'https://seyanty.info/api/dashboard/employees/201' \
--header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
--header 'Authorization: Bearer <valid-token>' \
--header 'Accept: */*' \
--header 'Host: seyanty.info' \
--header 'Connection: keep-alive'
```

# Database Verification Queries
```sql
-- Pre-deletion
SELECT o.id, o.employee_id, o.status, o.total FROM orders o WHERE o.employee_id = 201;

-- Post-deletion (if 200)
SELECT o.id, o.employee_id, o.status, o.total FROM orders o WHERE o.employee_id = 201;
-- Expected: employee_id NULL or reassigned

-- Post-deletion (if 409)
SELECT e.id FROM employees e WHERE e.id = 201;
-- Expected: employee still exists
```

---
*Last Updated: 2026-08-23 10:51*