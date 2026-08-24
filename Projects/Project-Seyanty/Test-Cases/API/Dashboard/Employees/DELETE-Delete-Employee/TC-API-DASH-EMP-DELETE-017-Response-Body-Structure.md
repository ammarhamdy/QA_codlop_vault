---
tc_id: TC-API-DASH-EMP-DELETE-017
title: Response Body Structure
priority: High
status:
  - Ready
type: API
linked_requirement: REQ-DASH-EMP-017
tags:
  - test-case
  - delete-employee
  - response-structure
  - schema-validation
  - api
run_result: Pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| endpoint | DELETE https://seyanty.info/api/dashboard/employees/:id |
| employee_id | Valid existing employee ID (e.g., 123) |
| auth_token | Valid Bearer token for authenticated dashboard user |
| expected_status | 200 |

# Preconditions
- Valid authentication token available for dashboard user
- Employee with ID `123` exists in database

# Steps
1. Prepare DELETE request to `https://seyanty.info/api/dashboard/employees/123` with valid auth
2. Send the DELETE request
3. Capture response body
4. Validate JSON structure matches expected schema exactly
5. Verify all required fields present with correct types
6. Verify no unexpected/extra fields

# Expected Result
- HTTP Status Code: 200 OK
- Response Headers: Content-Type: application/json
- Response Body Schema:
```json
{
    "status": "string",      // Required: "success"
    "code": "integer",       // Required: 200
    "message": "string",     // Required: Arabic success message
    "data": "array"          // Required: empty array []
}
```
- Field Validation:
  - `status`: string, exact value "success"
  - `code`: integer, exact value 200
  - `message`: string, exact value "تم حذف الموظف بنجاح"
  - `data`: array, exact value [] (empty array)
- No additional fields (meta, timestamp, etc.)

# Notes
- Strict schema validation - exact field names, types, and values
- `data` must be empty array `[]`, not null or object
- Arabic message must match exactly including spacing

# Attachments/Script
```bash
curl --location --request DELETE 'https://seyanty.info/api/dashboard/employees/123' \
--header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
--header 'Authorization: Bearer <valid-token>' \
--header 'Accept: */*' \
--header 'Host: seyanty.info' \
--header 'Connection: keep-alive' \
--silent | jq '.'
```

# Schema Validation (JSON Schema)
```json
{
  "type": "object",
  "required": ["status", "code", "message", "data"],
  "properties": {
    "status": {"type": "string", "const": "success"},
    "code": {"type": "integer", "const": 200},
    "message": {"type": "string", "const": "تم حذف الموظف بنجاح"},
    "data": {"type": "array", "items": {}, "minItems": 0, "maxItems": 0}
  },
  "additionalProperties": false
}
```

---
*Last Updated: 2026-08-23 10:51*