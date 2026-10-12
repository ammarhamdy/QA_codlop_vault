---
tc_id: TC-API-DASH-EMP-GET-020
title: Get Employees With Zero Page
priority: Medium
status:
  - completed
type: Functional
linked_requirement: REQ-DASH-EMP-020
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
| Query Parameters | pagination=on, limit=100, page=0, status= |
| Content-Type | application/json |

# Preconditions
- Valid authentication token
- Database contains employee records
- API validates page parameter for positive values

# Steps
1. Prepare valid Bearer token
2. Construct GET request with `page=0`
3. Include `pagination=on&limit=100`
4. Execute request with Authorization header
5. Capture response status code and body
6. Verify zero page handling

# Expected Result
**HTTP Status Code:** 400 Bad Request OR 422 Unprocessable Entity OR 200 with page 1 data

**Response Body (Validation Error):**
```json
{
    "status": "error",
    "code": 400,
    "message": "The page must be at least 1.",
    "data": null
}
```
OR (Fallback to Page 1):
```json
{
    "status": "success",
    "code": 200,
    "message": "success",
    "data": [...],
    "pagination": { "current_page": 1, ... }
}
```

**Validation Checks:**
- If error: clear validation message about minimum page
- If fallback: treats page=0 as page=1, returns first page data
- No 500 server error
- Behavior consistent with zero limit handling

# Notes
- Boundary test for page=0 (invalid, pages start at 1)
- May be rejected or normalized to page 1
- Similar to zero limit test (TC-013)
- Page numbering typically 1-based in pagination APIs

# Attachments
- cURL with page=0
- Expected responses

---

*Last Updated: 2026-08-23*