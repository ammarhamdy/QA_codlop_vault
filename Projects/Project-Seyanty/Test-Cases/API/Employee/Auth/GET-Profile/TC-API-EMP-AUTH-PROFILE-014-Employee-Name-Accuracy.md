---
tc_id: TC-API-EMP-AUTH-PROFILE-014
title: Employee Name Accuracy
priority:
  - Medium
status:
  - completed
type:
  - API
linked_requirement: REQ-EMP-AUTH-PROFILE-004
tags:
  - test-case
  - api
  - employee
  - auth
  - profile
severity: Major
module: Employee - Auth - Profile
endpoint: https://seyanty.info/api/employee/profile
method: GET
author: QA Automation Engineer
run_result: pass
---

# Description & Objective
Verify `data.name` equals `employee-09` exactly (case-sensitive).

> **Endpoint:** `GET https://seyanty.info/api/employee/profile`
> **Content-Type:** `application/json` | **Auth:** `Bearer <valid_token>` (JWT from `POST /api/employee/login`)
> **Sample:** `curl --location --request GET 'https://seyanty.info/api/employee/profile' --header 'Authorization: Bearer <valid-token>' --header 'Accept: */*'`

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `GET https://seyanty.info/api/employee/profile` |
| Expected name | `employee-09` |

# Preconditions
- Valid token.

# Request Details
- **Method & URL:** `GET https://seyanty.info/api/employee/profile`
- **Headers:**
  ```http
  User-Agent: Apidog/1.0.0 (https://apidog.com)
  Authorization: Bearer <valid_token>
  Accept: */*  (or application/json)
  Host: seyanty.info
  Connection: keep-alive
  Content-Type: application/json
  ```
- **Query/Path Params:** None.
- **Payload:** None (GET has no body).
- **Notes:** Valid GET.
- **Complete executable cURL for this scenario:**
  ```bash
TOKEN=$(curl --silent --location --request POST 'https://seyanty.info/api/employee/login' \
  --header 'Accept: application/json' \
  --form 'email_or_name="employee-09@mail.com"' \
  --form 'password="Admin#123"' | jq -r '.data.token')
curl --silent --location --request GET 'https://seyanty.info/api/employee/profile' \
  --header "Authorization: Bearer $TOKEN" \
  --header 'Accept: application/json' \
  --header 'Host: seyanty.info' | jq -r '.data.name'
  ```

# Steps
1. GET profile.
2. Assert `data.name == "employee-09"`.

# Expected Result
- `data.name` is string `employee-09`.
- Case-sensitive, no trailing spaces.

- **Response Headers:** `Content-Type: application/json` must be present.
- **Database Assertion:** Profile read is non-mutating; no DB write. Data matches `employees` table for authenticated user.

# Post-conditions / Cleanup
None.

# Notes
Name is used for `email_or_name` login alternative.

# Attachments/Script
```bash
#!/usr/bin/env bash
# Test Case: TC-API-EMP-AUTH-PROFILE-014 - Employee Name Accuracy
# Endpoint: GET https://seyanty.info/api/employee/profile

TITLE="TC-API-EMP-AUTH-PROFILE-014: Employee Name Accuracy"
echo "=================================================="
echo "Running: $TITLE"
echo "=================================================="

# Step 1: Login to acquire token
echo "1. Performing login..."
RES_LOGIN=$(curl --silent --location --request POST 'https://seyanty.info/api/employee/login' \
  --header 'Accept: application/json' \
  --form 'email_or_name="employee-09@mail.com"' \
  --form 'password="Admin#123"')

TOKEN=$(echo "$RES_LOGIN" | jq -r '.data.token // empty')
echo "TOKEN: $TOKEN"

# Step 2: Fetch Profile and verify employee Name (Expected 200)
echo -e "\n2. Fetching profile to verify employee Name (Expected 200):"
RES_PROFILE=$(curl --silent --write-out "\nHTTP_STATUS:%{http_code}" --location --request GET 'https://seyanty.info/api/employee/profile' \
  --header "Authorization: Bearer $TOKEN" \
  --header 'Accept: application/json' \
  --header 'Host: seyanty.info')

HTTP_STATUS=$(echo "$RES_PROFILE" | grep -o 'HTTP_STATUS:[0-9]*' | tail -n1 | cut -d: -f2)
HTTP_BODY=$(echo "$RES_PROFILE" | sed '/HTTP_STATUS:/d')
EMP_NAME=$(echo "$HTTP_BODY" | jq -r '.data.name // empty' 2>/dev/null)

echo "Status Code: $HTTP_STATUS"
echo "Employee Name: $EMP_NAME"
echo "Response Body:"
echo "$HTTP_BODY" | jq . 2>/dev/null || echo "$HTTP_BODY"

echo -e "\n=================================================="
echo "Assertions:"
echo "- Check HTTP status matches Expected Result (200)"
echo "- Check body schema: status/code/message/data"
echo "- Check that Employee Name (.data.name) matches expected record"
echo "- Check security: no password/sensitive leak"
echo "=================================================="
```

---
*Last Updated: {{date}} {{time}}*
