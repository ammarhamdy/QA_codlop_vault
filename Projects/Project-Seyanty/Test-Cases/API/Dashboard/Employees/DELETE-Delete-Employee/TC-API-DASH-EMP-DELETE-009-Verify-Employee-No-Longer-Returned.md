---
tc_id: TC-API-DASH-EMP-DELETE-009
title: Verify Employee No Longer Returned
priority: High
status:
type: Functional
linked_requirement: REQ-DASH-EMP-009
tags:
  - test-case
  - delete-employee
  - verification
  - list-endpoint
  - api
---

# Test Data
| Field | Value |
| ----- | ----- |
| endpoint | DELETE https://seyanty.info/api/dashboard/employees/:id |
| verify_endpoint | GET https://seyanty.info/api/dashboard/employees |
| verify_endpoint_single | GET https://seyanty.info/api/dashboard/employees/:id |
| employee_id | Valid existing employee ID (e.g., 102) |
| auth_token | Valid Bearer token for authenticated dashboard user |
| expected_status | 200 (delete), 200 (list), 404 (single get) |

# Preconditions
- Valid authentication token available for dashboard user
- Employee with ID `102` exists in database
- Employee list and single employee GET endpoints functional

# Steps
1. Call GET `/api/dashboard/employees` and confirm employee `102` appears in list
2. Call GET `/api/dashboard/employees/102` and confirm employee details returned
3. Prepare DELETE request to `https://seyanty.info/api/dashboard/employees/102`
4. Include valid Authorization header
5. Send the DELETE request and verify 200 OK
6. Call GET `/api/dashboard/employees` and verify employee `102` no longer in list
7. Call GET `/api/dashboard/employees/102` and verify 404 Not Found

# Expected Result
- DELETE Response: 200 OK with success message
- GET List (Post-Delete): 200 OK, employee `102` absent from response data array
- GET Single (Post-Delete): 404 Not Found with message "هذا الموظف غير موجود"
- Database consistent with API responses

# Notes
- End-to-end verification via API layer (no direct DB access needed)
- Tests both list and detail endpoints for consistency
- Confirms deletion propagates to all read operations

# Attachments/Script
```bash
# Step 1-2: Verify employee exists
curl --location --request GET 'https://seyanty.info/api/dashboard/employees' \
--header 'Authorization: Bearer <valid-token>'

curl --location --request GET 'https://seyanty.info/api/dashboard/employees/102' \
--header 'Authorization: Bearer <valid-token>'

# Step 3-5: Delete employee
curl --location --request DELETE 'https://seyanty.info/api/dashboard/employees/102' \
--header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
--header 'Authorization: Bearer <valid-token>' \
--header 'Accept: */*' \
--header 'Host: seyanty.info' \
--header 'Connection: keep-alive'

# Step 6-7: Verify removal
curl --location --request GET 'https://seyanty.info/api/dashboard/employees' \
--header 'Authorization: Bearer <valid-token>'

curl --location --request GET 'https://seyanty.info/api/dashboard/employees/102' \
--header 'Authorization: Bearer <valid-token>'
```

---
*Last Updated: 2026-08-23 10:51*