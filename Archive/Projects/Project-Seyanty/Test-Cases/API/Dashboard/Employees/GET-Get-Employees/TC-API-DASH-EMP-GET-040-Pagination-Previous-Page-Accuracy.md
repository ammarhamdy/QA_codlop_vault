---
tc_id: TC-API-DASH-EMP-GET-040
title: Pagination Previous Page Accuracy
priority: High
status:
  - completed
type: Functional
linked_requirement: REQ-DASH-EMP-040
tags:
  - test-case
  - api
  - dashboard
  - employees
  - pagination
  - validation
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | GET https://seyanty.info/api/dashboard/employees |
| Authentication | Bearer <valid_token> |
| Query Parameters | pagination=on, limit=5, page=2, status= |
| Content-Type | application/json |

# Preconditions
- Valid authentication token
- Database contains 9 employees
- Pagination with limit=5 (page 2 has prev, page 1 doesn't)

# Steps
1. Prepare valid Bearer token
2. Request page 1 with limit=5
3. Verify `prev_page_url` is null
4. Request page 2 with limit=5
5. Verify `prev_page_url` is correct
6. Test with filters

# Expected Result
**HTTP Status Code:** 200 OK

**Page 1 (limit=5):**
```json
"prev_page_url": null
```

**Page 2 (limit=5):**
```json
"prev_page_url": "https://seyanty.info/api/dashboard/employees?pagination=on&limit=5&page=1"
```

**Validation Checks:**
- Page 1 (first): `prev_page_url` = null
- Page 2: `prev_page_url` is valid URL with page=1
- URL includes all original query params
- Single page: `prev_page_url` = null
- Empty result: `prev_page_url` = null
- URL format consistent

**Filter Preservation:**
- If `status=active` in request, `prev_page_url` includes `status=active`
- All query parameters preserved

# Notes
- Complements next_page_url test (TC-039)
- Enables "Previous" button in pagination UI
- Null on first page prevents invalid navigation
- Symmetric with next_page_url behavior

# Attachments
- cURL for page 1 and page 2
- Expected prev_page_url values

```shell
#!/usr/bin/env bash

BASE_URL="https://seyanty.info/api/dashboard"

# Function to authenticate and extract the Bearer token
login() {
  local email="$1"
  local password="$2"

  local response
  response=$(curl --silent --location --request POST "https://seyanty.info/api/dashboard/login" \
    --header "Accept: application/json" \
    --header "Content-Type: application/json" \
    --data "{
      "email_or_name": "${email}",
      "password": "${password}"
    }")

  # Extracts token from common response structures using jq, python, or grep fallback
  if command -v jq >/dev/null 2>&1; then
    echo "$response" | jq -r '.token // .data.token // .access_token // empty'
  elif command -v python3 >/dev/null 2>&1; then
    echo "$response" | python3 -c "import sys, json; data=json.load(sys.stdin); print(data.get('token') or data.get('data', {}).get('token') or data.get('access_token', ''))"
  else
    echo "$response" | grep -o '"token":"[^"]*' | cut -d'"' -f4
  fi
}

# Function to fetch employees using the auth token
get_employees() {
  local token="$1"
  local query_string="$2"

  curl --silent --location --request GET "https://seyanty.info/api/dashboard/employees?${query_string}" \
    --header "Authorization: Bearer ${token}" \
    --header "Accept: application/json"
}

# --- Execution ---
echo "Logging in..."
AUTH_TOKEN=$(login "admin@admin.com" "Admin#123")

if [[ -z "$AUTH_TOKEN" ]]; then
  echo "Error: Failed to obtain authentication token." >&2
  exit 1
fi

echo "Token received successfully."
echo "Fetching employees..."
get_employees "$AUTH_TOKEN" "pagination=on&limit=100&page=1" | jq

```
---

*Last Updated: 2026-08-23*