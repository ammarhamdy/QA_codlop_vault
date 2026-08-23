---
tc_id: TC-API-DASH-EMP-SEARCH-020
title: Sensitive Data Not Exposed
priority: Critical
status:
type: Security
linked_requirement: REQ-DASH-EMP-SEARCH-020
tags:
  - test-case
  - api
  - dashboard
  - employees
  - search
  - security
  - sensitive-data
  - privacy
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
- Employee records exist in database with sensitive fields (password hashes, tokens, internal IDs, etc.)
- API endpoint is accessible and operational

# Steps
1. Prepare GET request to `/api/dashboard/employees/search` with query parameters: `key=employee-10`, `pagination=on`, `limit=100`, `page=1`
2. Set Authorization header with valid Bearer token
3. Set Accept header to `*/*`
4. Execute the request
5. Capture response body
6. Inspect response for any sensitive data fields
7. Validate that only approved fields are returned

# Expected Result
- **HTTP Status Code:** 200 OK
- **Response Body Must NOT Contain:**
  - `password` or `password_hash` or `hashed_password`
  - `token` or `api_token` or `access_token` or `refresh_token`
  - `remember_token`
  - `email_verified_at` (if considered sensitive)
  - `created_at`, `updated_at` (internal timestamps)
  - `deleted_at` (soft delete marker)
  - `role_id`, `permission_id` (internal RBAC)
  - `social_security_number`, `national_id`, `bank_account` (PII)
  - Any field not in the approved employee schema
- **Approved Fields Only (from schema):**
  - id, name, email, phone, photo, job_title, overview, status, is_blocked, orders_count
- **Security Assertions:** Zero sensitive data leakage; response matches exactly the defined public API schema

# Notes
- Critical security test for data privacy compliance
- Validates API does not accidentally expose internal database columns
- Should be run after any schema changes or migrations
- Complies with data minimization principle

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