---
tc_id: TC-API-DASH-EMP-DELETE-010
title: Employee Data Persistence After Deletion
priority: Medium
status:
  - Ready
type: Functional
linked_requirement: REQ-DASH-EMP-010
tags:
  - test-case
  - delete-employee
  - data-persistence
  - related-data
  - api
run_result: Pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| endpoint | DELETE https://seyanty.info/api/dashboard/employees/:id |
| employee_id | Employee with related data (e.g., 103) |
| auth_token | Valid Bearer token for authenticated dashboard user |
| expected_status | 200 |

# Preconditions
- Valid authentication token available for dashboard user
- Employee ID `103` exists with related data (orders, attendance, contacts, etc.)
- Related data tables populated with references to employee `103`

# Steps
1. Query related tables to document pre-deletion state (orders count, attendance records, contacts)
2. Prepare DELETE request to `https://seyanty.info/api/dashboard/employees/103`
3. Include valid Authorization header
4. Send the DELETE request and verify 200 OK
5. Query related tables to verify post-deletion state
6. Verify related data handled per business rules (cascade delete, SET NULL, preserve with archived flag, etc.)

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
- Database Assertions (per business rules):
  - Employee record removed
  - Related orders: reassigned / archived / preserved with employee_id NULL
  - Attendance records: preserved for compliance / anonymized
  - Contacts: reassigned / preserved
  - No orphaned records violating FK constraints

# Notes
- Critical for data integrity compliance
- Business rules determine exact behavior - document expected behavior per entity
- May require coordination with domain experts for correct expectations

# Attachments/Script
```bash
curl --location --request DELETE 'https://seyanty.info/api/dashboard/employees/103' \
--header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
--header 'Authorization: Bearer <valid-token>' \
--header 'Accept: */*' \
--header 'Host: seyanty.info' \
--header 'Connection: keep-alive'
```

# Database Verification Queries
```sql
-- Check related orders handling
SELECT id, employee_id, status FROM orders WHERE employee_id = 103;

-- Check attendance records
SELECT id, employee_id, date FROM attendance WHERE employee_id = 103;

-- Check contacts
SELECT id, employee_id, type FROM contacts WHERE employee_id = 103;
```

---
*Last Updated: 2026-08-23 10:51*