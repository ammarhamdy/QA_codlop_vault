---
tc_id: TC-API-EMP-AUTH-PROFILE-023
title: Orders List Accuracy
priority:
  - Medium
status:
type:
  - API
linked_requirement: REQ-EMP-AUTH-PROFILE-004
tags:
  - test-case
  - api
  - employee
  - auth
  - profile
severity: Minor
module: Employee - Auth - Profile
endpoint: https://seyanty.info/api/employee/profile
method: GET
author: QA Automation Engineer
---

# Description & Objective
Verify `data.orders` array structure and, when non-empty, correct order objects.

> **Endpoint:** `GET https://seyanty.info/api/employee/profile`
> **Content-Type:** `application/json` | **Auth:** `Bearer <valid_token>` (JWT from `POST /api/employee/login`)
> **Sample:** `curl --location --request GET 'https://seyanty.info/api/employee/profile' --header 'Authorization: Bearer <valid-token>' --header 'Accept: */*'`

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `GET https://seyanty.info/api/employee/profile` |
| Expected orders | `[]` for employee-09 |
| Order schema if present | `id, status, ...` per orders API |

# Preconditions
- Valid token.
- Employee-09 has empty orders; alternative employee with orders may be used to validate schema.

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
- **Notes:** Valid GET; validate `orders` is array.
- **Complete executable cURL for this scenario:**
  ```bash
TOKEN=$(curl --silent --location --request POST 'https://seyanty.info/api/employee/login' \
  --header 'Accept: application/json' \
  --form 'email_or_name="employee-09@mail.com"' \
  --form 'password="Admin#123"' | jq -r '.data.token')
curl --silent --location --request GET 'https://seyanty.info/api/employee/profile' \
  --header "Authorization: Bearer $TOKEN" \
  --header 'Accept: application/json' \
  --header 'Host: seyanty.info' | jq '.data.orders'
  ```

# Steps
1. GET profile.
2. Assert `data.orders` is array (`jq -e '.data.orders|type=="array"'`).
3. If array non-empty, validate each element has `id` and `status`.
4. For employee-09, assert `length == 0`.

# Expected Result
- `data.orders` is array type.
- For employee-09, `[]` and `orders_count 0`.
- No null, not missing.

- **Response Headers:** `Content-Type: application/json` must be present.
- **Database Assertion:** Profile read is non-mutating; no DB write. Data matches `employees` table for authenticated user.

# Post-conditions / Cleanup
None.

# Notes
Orders may be lazy-loaded; profile should return at least empty array.

# Attachments/Script
```bash
#!/usr/bin/env bash
# Test Case: TC-API-EMP-AUTH-PROFILE-023 - Orders List Accuracy
# Endpoint: GET https://seyanty.info/api/employee/profile
TITLE="TC-API-EMP-AUTH-PROFILE-023: Orders List Accuracy"
echo "=================================================="
echo "Running: $TITLE"
echo "=================================================="

RESPONSE=$(TOKEN=$(curl --silent --location --request POST 'https://seyanty.info/api/employee/login' \
  --header 'Accept: application/json' \
  --form 'email_or_name="employee-09@mail.com"' \
  --form 'password="Admin#123"' | jq -r '.data.token')
curl --silent --location --request GET 'https://seyanty.info/api/employee/profile' \
  --header "Authorization: Bearer $TOKEN" \
  --header 'Accept: application/json' \
  --header 'Host: seyanty.info' | jq '.data.orders' 2>&1)
HTTP_BODY=$(echo "$RESPONSE" | sed -e '$d' | sed -e '/^TOKEN:/d' | tail -n 50)
HTTP_STATUS=$(echo "$RESPONSE" | tail -n1 | sed -e 's/.*HTTP_STATUS://' | tr -d ' \n\r')

# If status not parsed (multi-cURL cases), try alternative extraction
if ! echo "$HTTP_STATUS" | grep -qE '^[0-9]{3}$'; then
  HTTP_STATUS=$(echo "$RESPONSE" | grep -o 'HTTP_STATUS:[0-9]*' | tail -n1 | cut -d: -f2)
fi

echo "Status Code: $HTTP_STATUS"
echo "Response Body:"
echo "$HTTP_BODY" | jq . 2>/dev/null || echo "$HTTP_BODY"
echo "=================================================="
echo "Assertions:"
echo "- Check HTTP status matches Expected Result"
echo "- Check body schema: status/code/message/data"
echo "- Check security: no password/sensitive leak"
echo "=================================================="
```

---
*Last Updated: {{date}} {{time}}*
