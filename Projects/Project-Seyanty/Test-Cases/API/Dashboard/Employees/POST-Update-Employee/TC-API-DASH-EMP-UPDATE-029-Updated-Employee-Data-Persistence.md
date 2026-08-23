---
tc_id: TC-API-DASH-EMP-UPDATE-029
title: Updated Employee Data Persistence
module: Dashboard - Employees
endpoint: /api/dashboard/employees/:id
method: POST
severity: Critical
priority: High
type: Functional
author: QA Automation Engineer
status:
linked_requirement: REQ-EMP-029
tags:
  - api
  - employee
  - update
  - persistence
  - database
  - verification
---

# Test Data
| Field | Value |
| ----- | ----- |
| employee_id | 63 (existing employee) |
| name | employee-10.1 |
| email | employee-10@mail.com |
| phone | 0555555555 |
| job_title | engineer |

# Preconditions
- Valid authentication token (Bearer token) is available
- Employee with ID 63 exists in the database
- Test environment is accessible at https://seyanty.info
- Direct database access available for verification

# Request Details
## Headers
| Header | Value |
| ------ | ----- |
| Authorization | Bearer <valid_token> |
| Accept | */* |
| Content-Type | multipart/form-data |

## Path Parameters
| Parameter | Value |
| --------- | ----- |
| id | 63 |

## Form Data Payload
| Field | Value | Type |
| ----- | ----- | ---- |
| _method | put | text |
| name | employee-10.1 | text |
| email | employee-10@mail.com | text |
| phone | 0555555555 | text |
| job_title | engineer | text |

## cURL Command
```bash
curl --location --request POST 'https://seyanty.info/api/dashboard/employees/63' \
--header 'Authorization: Bearer <valid_token>' \
--header 'Accept: */*' \
--form '_method="put"' \
--form 'name="employee-10.1"' \
--form 'email="employee-10@mail.com"' \
--form 'phone="0555555555"' \
--form 'job_title="engineer"'
```

# Steps
1. Prepare valid authentication token
2. Query database directly: SELECT * FROM employees WHERE id = 63 (record original)
3. Send POST request with updated data
4. Verify API response success (200)
5. Query database directly again: SELECT * FROM employees WHERE id = 63
6. Compare database record with API response
7. Verify updated_at timestamp changed
8. Verify created_at timestamp unchanged

# Expected Result
## HTTP Response
- **Status Code**: 200 OK

## Database Persistence Verification
| Field | Database Value | Expected |
| ----- | -------------- | -------- |
| id | 63 | 63 |
| name | employee-10.1 | employee-10.1 |
| email | employee-10@mail.com | employee-10@mail.com |
| phone | 0555555555 | 0555555555 |
| job_title | engineer | engineer |
| photo | (unchanged) | (unchanged) |
| status | inactive | inactive |
| is_blocked | active | active |
| created_at | (original) | (unchanged) |
| updated_at | (new timestamp) | > original |

## Additional Assertions
- Transaction committed (no rollback)
- No duplicate records created
- Foreign key relationships intact
- Indexes updated if applicable

# Post-conditions / Cleanup
- Revert employee data to original values for test isolation
- Verify cleanup doesn't affect other tests

# Notes
- Verifies actual database persistence (not just API response)
- Tests transaction commit behavior
- updated_at should auto-update on successful update
- created_at must remain immutable

# Attachments/Script
- Test script: tests/api/employees/update_data_persistence.py
- SQL verification: SELECT * FROM employees WHERE id = 63;

---
*Last Updated: 2026-08-23 10:00:00*