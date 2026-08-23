---
tc_id: TC-API-DASH-EMP-DELETE-018
title: Success Response Message
priority: High
status:
type: Functional
linked_requirement: REQ-DASH-EMP-018
tags:
  - test-case
  - delete-employee
  - response-message
  - localization
  - api
---

# Test Data
| Field | Value |
| ----- | ----- |
| endpoint | DELETE https://seyanty.info/api/dashboard/employees/:id |
| employee_id | Valid existing employee ID (e.g., 123) |
| auth_token | Valid Bearer token for authenticated dashboard user |
| expected_status | 200 |
| expected_message | "تم حذف الموظف بنجاح" |

# Preconditions
- Valid authentication token available for dashboard user
- Employee with ID `123` exists in database

# Steps
1. Prepare DELETE request to `https://seyanty.info/api/dashboard/employees/123` with valid auth
2. Send the DELETE request
3. Capture response body
4. Extract `message` field from response
5. Verify exact Arabic message match

# Expected Result
- HTTP Status Code: 200 OK
- Response Body `message` field: "تم حذف الموظف بنجاح"
- Exact string match including:
  - Arabic characters: ت م ح ذ ف ا ل م و ظ ف ب ن ج ا ح
  - Spacing: single space between words
  - No trailing/leading whitespace
  - No punctuation at end

# Notes
- Validates Arabic localization of success message
- Message must match specification exactly for client integration
- Tests i18n consistency across API responses

# Attachments/Script
```bash
curl --location --request DELETE 'https://seyanty.info/api/dashboard/employees/123' \
--header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
--header 'Authorization: Bearer <valid-token>' \
--header 'Accept: */*' \
--header 'Host: seyanty.info' \
--header 'Connection: keep-alive' \
--silent | jq -r '.message'
```

# Expected Output
```
تم حذف الموظف بنجاح
```

---
*Last Updated: 2026-08-23 10:51*