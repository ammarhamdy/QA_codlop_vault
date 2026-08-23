---
tc_id: TC-API-DASH-EMP-GET-006
title: Unauthorized User Access
priority: High
status:
  - completed
type: Functional
linked_requirement: REQ-DASH-EMP-006
tags:
  - test-case
  - api
  - dashboard
  - employees
  - authorization
  - negative
  - security
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | GET https://seyanty.info/api/dashboard/employees |
| Authentication | Bearer <valid_token_but_unauthorized_user> |
| Query Parameters | pagination=on, limit=100, page=1, status= |
| Content-Type | application/json |
| User Role | Non-admin, non-manager, or user without dashboard/employee read permission |

# Preconditions
- User account exists but lacks dashboard/employee read permissions
- User has valid authentication token (logged in successfully)
- RBAC/permission system is enforced on endpoint
- Token is valid and not expired

# Steps
1. Login as user without dashboard/employee read permissions
2. Obtain valid Bearer token for this unauthorized user
3. Construct GET request to `/api/dashboard/employees` with standard query parameters
4. Include header: `Authorization: Bearer <unauthorized_user_token>`
5. Execute the request
6. Capture response status code and body

# Expected Result
**HTTP Status Code:** 401 Unauthorized OR 403 Forbidden

**Response Body (401):**
```json
{
    "status": "error",
    "code": 401,
    "message": "لابد من تسجيل الدخول أولا",
    "data": null
}
```
**Response Body (403):**
```json
{
    "status": "error",
    "code": 403,
    "message": "Unauthorized",
    "data": null
}
```
OR
```json
{
    "status": "error",
    "code": 404,
    "message": "Not Found",
    "data": null
}
```

**Validation Checks:**
- Response status is "error"
- Response code is 401, 403, or 404
- No employee data returned to unauthorized user
- Permission denial does not leak data existence

# Notes
- Tests authorization (RBAC) not just authentication
- User is authenticated but not authorized for this resource
- 403 Forbidden is more semantically correct than 401 for authorized-but-forbidden
- 404 may be used to prevent resource enumeration
- Critical for multi-tenant or role-based access control systems

# Attachments
- cURL with unauthorized user token
- Expected error responses

```shell
#!/usr/bin/env bash

BASE_URL="https://seyanty.info/api/dashboard"

# Test: Unauthorized User Access
# Note: This test requires login credentials for a user WITHOUT dashboard/employee read permissions.
# Replace with actual unauthorized user credentials.
echo "Testing GET employees with unauthorized user..."
echo "NOTE: Replace with unauthorized user credentials"
# AUTH_TOKEN=$(login "unauthorized@user.com" "password")
# if [[ -z "$AUTH_TOKEN" ]]; then
#   echo "Error: Failed to obtain authentication token." >&2
#   exit 1
# fi
# curl --silent --location --request GET "https://seyanty.info/api/dashboard/employees?pagination=on&limit=100&page=1" \
#   --header "Authorization: Bearer ${AUTH_TOKEN}" \
#   --header "Accept: application/json" \
#   --header "Content-Type: application/json" | jq

```
---

*Last Updated: 2026-08-23*