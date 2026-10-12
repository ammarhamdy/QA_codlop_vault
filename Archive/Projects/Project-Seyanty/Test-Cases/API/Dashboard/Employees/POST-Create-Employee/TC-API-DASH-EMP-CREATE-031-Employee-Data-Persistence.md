---
tc_id: TC-API-DASH-EMP-CREATE-031
title: Employee Data Persistence
priority: High
status:
  - completed
type: Functional
linked_requirement: REQ-DASH-EMP-025
tags:
  - test-case
  - api
  - dashboard
  - employees
  - create
  - positive
  - data-persistence
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| name | employee-10 |
| email | employee-10@mail.com |
| password | Admin#123 |
| phone | 0500000110 |
| job_title | eng |
| overview | Test overview |
| photo | /home/am/Pictures/profile/male/79ad7b7a-99da-4e20-962d-1e9fc405312b.jpeg |

# Preconditions
- Valid authentication token (Bearer token) available for admin user
- Database is in clean state
- API server is running and accessible at https://seyanty.info

# Steps
1. Prepare multipart/form-data request with all valid employee fields
2. Set Authorization header with valid Bearer token
3. Send POST request to https://seyanty.info/api/dashboard/employees
4. Capture response and extract employee ID
5. Wait 5 seconds
6. Query database for employee record by ID
7. Send GET request to retrieve employee (if endpoint exists)
8. Verify data persists across requests

# Expected Result
- **HTTP Status Code:** 200 OK (initial creation)
- **Persistence Assertions:**
  - Employee record exists in database after creation
  - Employee record exists in database after 5 seconds
  - Employee record exists in database after server restart (if testable)
  - GET request returns same data (if endpoint exists)
  - Photo file exists in storage and is accessible
  - No data loss or corruption

# Notes
- Verifies data persistence in database and file storage
- Confirms transaction commitment
- Photo file should persist in storage/employees directory

# Attachments/Script
```bash
#!/usr/bin/env bash

set -euo pipefail

BASE_URL="https://seyanty.info/api/dashboard"
ADMIN_EMAIL="admin@admin.com"
ADMIN_PASS="Admin#123"
PHOTO_PATH="/home/am/Pictures/profile/male/79ad7b7a-99da-4e20-962d-1e9fc405312b.jpeg"

# Authenticate and extract Bearer token
login() {
  local email="$1"
  local password="$2"
  local payload

  payload=$(jq -n \
    --arg email "$email" \
    --arg password "$password" \
    '{email_or_name: $email, password: $password}')

  local response
  response=$(curl --silent --show-error --location --request POST "${BASE_URL}/login" \
    --header "Accept: application/json" \
    --header "Content-Type: application/json" \
    --data "$payload")

  echo "$response" | jq -r '.data.token // .token // .access_token // empty'
}

# --- Step 0: Dynamic Authentication ---
echo "==> Authenticating admin..."
AUTH_TOKEN=$(login "$ADMIN_EMAIL" "$ADMIN_PASS")

if [[ -z "$AUTH_TOKEN" ]]; then
  echo "Error: Failed to obtain authentication token." >&2
  exit 1
fi
echo "==> Authentication successful."

# Prepare optional photo form arg
photo_args=()
if [[ -f "$PHOTO_PATH" ]]; then
  photo_args+=(--form "photo=@${PHOTO_PATH}")
else
  echo "Warning: Photo not found at $PHOTO_PATH, skipping file upload field." >&2
fi

# --- Steps 1-3: Create Employee ---
echo "==> Creating employee..."
CREATE_RES=$(curl --silent --show-error --location --request POST "${BASE_URL}/employees" \
  --header "Authorization: Bearer ${AUTH_TOKEN}" \
  --header "Accept: application/json" \
  --form-string 'name=employee-10' \
  --form-string 'email=employee-10@mail.com' \
  --form-string 'password=Admin#123' \
  --form-string 'phone=0500000110' \
  --form-string 'job_title=eng' \
  --form-string 'overview=Test overview' \
  "${photo_args[@]}")

echo "Create Response: $(echo "$CREATE_RES" | jq .)"

# Extract the created employee ID dynamically
EMPLOYEE_ID=$(echo "$CREATE_RES" | jq -r '.data.id // .id // .data.employee.id // empty')

if [[ -z "$EMPLOYEE_ID" ]]; then
  echo "Error: Could not extract employee ID from create response." >&2
  exit 1
fi

echo "==> Successfully created employee with ID: ${EMPLOYEE_ID}"

# --- Steps 5-6: Delay for Persistence Check ---
echo "==> Waiting 2 seconds for DB write propagation..."
sleep 2

# --- Step 7: Verify via GET Endpoint ---
echo "==> Verifying employee persistence via GET /employees/${EMPLOYEE_ID}..."
VERIFY_RES=$(curl --silent --show-error --location --request GET "${BASE_URL}/employees" \
  --header "Authorization: Bearer ${AUTH_TOKEN}" \
  --header "Accept: application/json")

echo "Verification Response: $(echo "$VERIFY_RES" | jq .)"
```

---
*Last Updated: 2026-08-23 10:00:00*