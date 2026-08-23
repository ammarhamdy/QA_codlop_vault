---
tc_id: TC-API-DASH-EMP-SEARCH-018
title: Search Result Data Accuracy
priority: Critical
status:
type: Functional
linked_requirement: REQ-DASH-EMP-SEARCH-018
tags:
  - test-case
  - api
  - dashboard
  - employees
  - search
  - validation
  - data-accuracy
---

# Test Data
| Field | Value |
| ----- | ----- |
| key | employee-10 |
| pagination | on |
| limit | 100 |
| page | 1 |
| Authorization | Bearer <valid_token> |

# Preconditions
- Valid authentication token is available
- Known employee record exists in database with verified data:
  - id: 63
  - name: "employee-10.1"
  - email: "employee-10@mail.com"
  - phone: "0500000110"
  - photo: "https://seyanty.info/storage/employees/zy0RHyVmKiz1KoWP9jsxRfrIpd4qL8BRNLJ0hRkA.jpg"
  - job_title: "engineer"
  - overview: null
  - status: "inactive"
  - is_blocked: "active"
  - orders_count: null
- API endpoint is accessible and operational

# Steps
1. Prepare GET request to `/api/dashboard/employees/search` with query parameters: `key=employee-10`, `pagination=on`, `limit=100`, `page=1`
2. Set Authorization header with valid Bearer token
3. Set Accept header to `*/*`
4. Execute the request
5. Capture response body
6. Compare each field in response with known database values
7. Verify data accuracy and completeness

# Expected Result
- **HTTP Status Code:** 200 OK
- **Response Body Field-by-Field Validation:**
  - `data[0].id` == 63 (exact match)
  - `data[0].name` == "employee-10.1" (exact string match)
  - `data[0].email` == "employee-10@mail.com" (exact email match)
  - `data[0].phone` == "0500000110" (exact phone match)
  - `data[0].photo` == "https://seyanty.info/storage/employees/zy0RHyVmKiz1KoWP9jsxRfrIpd4qL8BRNLJ0hRkA.jpg" (exact URL match)
  - `data[0].job_title` == "engineer" (exact match)
  - `data[0].overview` == null (null value preserved)
  - `data[0].status` == "inactive" (enum value match)
  - `data[0].is_blocked` == "active" (enum value match)
  - `data[0].orders_count` == null (null value preserved)
- **Pagination Accuracy:**
  - `pagination.total` == 1 (matches actual result count)
  - `pagination.current_page` == 1
  - `pagination.per_page` == 100

# Notes
- Validates data integrity between database and API response
- Ensures no data transformation errors or field mapping issues
- Critical for data-dependent downstream systems

# Attachments/Script
```bash
curl --location --request GET 'https://seyanty.info/api/dashboard/employees/search?key=employee-10&pagination=on&limit=100&page=1' \
--header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
--header 'Authorization: Bearer <valid-token>' \
--header 'Accept: */*' \
--header 'Host: seyanty.info' \
--header 'Connection: keep-alive'
```

---
*Last Updated: 2026-08-23 10:00:00*