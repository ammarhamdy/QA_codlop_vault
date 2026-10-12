---
tc_id: TC-API-DASH-EMP-GET-021
title: Get Employees With Negative Page
priority: Medium
status:
  - completed
type: Functional
linked_requirement: REQ-DASH-EMP-021
tags:
  - test-case
  - api
  - dashboard
  - employees
  - pagination
  - page
  - boundary
  - negative
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | GET https://seyanty.info/api/dashboard/employees |
| Authentication | Bearer <valid_token> |
| Query Parameters | pagination=on, limit=100, page=-1, status= |
| Content-Type | application/json |

# Preconditions
- Valid authentication token
- Database contains employee records
- API validates page parameter for positive values

# Steps
1. Prepare valid Bearer token
2. Construct GET request with `page=-1`
3. Include `pagination=on&limit=100`
4. Execute request with Authorization header
5. Capture response status code and body
6. Verify negative page rejection

# Expected Result
**HTTP Status Code:** 400 Bad Request OR 422 Unprocessable Entity

**Response Body:**
```json
{
    "status": "error",
    "code": 400,
    "message": "The page must be a positive integer.",
    "data": null
}
```

**Validation Checks:**
- Response status is "error"
- Response code is 400 or 422
- Error message indicates page must be positive
- No data returned
- No server error (500)

# Notes
- Boundary test for negative page values
- Negative pages make no logical sense
- Should be rejected at validation layer
- Consistent with negative limit handling (TC-014)

# Attachments
- cURL with page=-1
- Expected validation error

---

*Last Updated: 2026-08-23*