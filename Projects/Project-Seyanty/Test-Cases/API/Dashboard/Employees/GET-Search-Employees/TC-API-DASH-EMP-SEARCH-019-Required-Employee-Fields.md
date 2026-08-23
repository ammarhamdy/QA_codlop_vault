---
tc_id: TC-API-DASH-EMP-SEARCH-019
title: Required Employee Fields
priority: High
status:
type: Functional
linked_requirement: REQ-DASH-EMP-SEARCH-019
tags:
  - test-case
  - api
  - dashboard
  - employees
  - search
  - validation
  - required-fields
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
- Employee records exist matching the search query
- Database contains employees with all fields populated and some with null optional fields
- API endpoint is accessible and operational

# Steps
1. Prepare GET request to `/api/dashboard/employees/search` with query parameters: `key=employee-10`, `pagination=on`, `limit=100`, `page=1`
2. Set Authorization header with valid Bearer token
3. Set Accept header to `*/*`
4. Execute the request
5. Capture response body
6. Validate that all required employee fields are present in each returned employee object
7. Validate that optional fields are included (even if null)

# Expected Result
- **HTTP Status Code:** 200 OK
- **Required Fields Present in Every Employee Object:**
  - `id` (integer, not null)
  - `name` (string, not null/empty)
  - `email` (string, valid email format, not null)
  - `phone` (string, not null)
  - `job_title` (string, not null)
  - `status` (string, enum: active|inactive, not null)
  - `is_blocked` (string, enum: active|blocked, not null)
- **Optional Fields Present (may be null):**
  - `photo` (string URL or null)
  - `overview` (string or null)
  - `orders_count` (integer or null)
- **Assertions:** No required field is missing; no required field is null; optional fields are explicitly included in response

# Notes
- Validates API response completeness for required fields
- Ensures optional fields are always included (even as null) for consistent schema
- Prevents frontend errors from missing fields

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