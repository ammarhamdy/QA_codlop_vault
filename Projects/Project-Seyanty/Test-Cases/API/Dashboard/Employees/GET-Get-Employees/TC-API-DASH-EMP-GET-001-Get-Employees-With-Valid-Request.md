---
tc_id: TC-API-DASH-EMP-GET-001
title: Get Employees With Valid Request
priority: High
status:
  - completed
type: Functional
linked_requirement: REQ-DASH-EMP-001
tags:
  - test-case
  - api
  - dashboard
  - employees
  - positive
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | GET https://seyanty.info/api/dashboard/employees |
| Authentication | Bearer <valid_token> |
| Query Parameters | pagination=on, limit=100, page=1, status= |
| Content-Type | application/json |

# Preconditions
- Valid authentication token exists and is not expired
- Database contains at least 9 employee records (as per sample data)
- User has dashboard access permissions
- API server is running and accessible

# Steps
1. Prepare valid Bearer token for authentication
2. Construct GET request to `/api/dashboard/employees` with query parameters: `pagination=on&limit=100&page=1&status=`
3. Set headers: `Authorization: Bearer <valid_token>`, `Accept: application/json`, `Content-Type: application/json`
4. Execute the GET request
5. Capture response status code, headers, and body
6. Validate response structure and data integrity

# Expected Result
**HTTP Status Code:** 200 OK

**Response Headers:**
- Content-Type: application/json
- Cache-Control: no-cache, private
- Date: <current_date>

**Response Body:**
```json
{
    "status": "success",
    "code": 200,
    "message": "success",
    "data": [
        {
            "id": 62,
            "name": "محمد حسام",
            "email": "nbccc@yahoo.com",
            "phone": "0514787236",
            "photo": "https://seyanty.info/default.jpg",
            "job_title": "مهندس 🧑‍🔧",
            "overview": null,
            "status": "active",
            "is_blocked": "active",
            "orders_count": 0
        },
        {
            "id": 61,
            "name": "admin",
            "email": "test11@gmail.com",
            "phone": "0512345678",
            "photo": "https://seyanty.info/storage/employees/OrD1aOFNPgCcaeUyl7QmEZxZs2Yfho9hAlBXBIE6.jpg",
            "job_title": "اخصائي الكترونيات",
            "overview": "نبذة عن موظف اخصائي الكترونيات محترف ومتميز في انجاز المهمات",
            "status": "inactive",
            "is_blocked": "active",
            "orders_count": 1
        },
        {
            "id": 60,
            "name": "محمد حسام",
            "email": "nbc@yahoo.com",
            "phone": "0514785236",
            "photo": "https://seyanty.info/storage/employees/8oG8CUDnIrCoQZ5xvDIbLxucO2KRxQjtIFeoh0mt.png",
            "job_title": "القصيم",
            "overview": "مهندس محمد",
            "status": "inactive",
            "is_blocked": "active",
            "orders_count": 1
        },
        {
            "id": 59,
            "name": "ahmed",
            "email": "ahmed@gmail.com",
            "phone": "0589632545",
            "photo": "https://seyanty.info/storage/employees/OoG9tc3LABYvSJtFKze666jpYMLfuZwLxgVrO1hg.jpg",
            "job_title": null,
            "overview": null,
            "status": "active",
            "is_blocked": "inactive",
            "orders_count": 0
        },
        {
            "id": 58,
            "name": "محمد",
            "email": "test2@gmail.com",
            "phone": "0521478541",
            "photo": "https://seyanty.info/default.jpg",
            "job_title": null,
            "overview": null,
            "status": "inactive",
            "is_blocked": "active",
            "orders_count": 1
        },
        {
            "id": 57,
            "name": "الموظف : عمار",
            "email": "employee.am@mail.com",
            "phone": "0501000001",
            "photo": "https://seyanty.info/storage/employees/Gt9BtFUxFP55Ibn52S0rauGG7hEWvxPDLsXdac5j.jpg",
            "job_title": null,
            "overview": null,
            "status": "inactive",
            "is_blocked": "active",
            "orders_count": 0
        },
        {
            "id": 45,
            "name": "محمد حسام الدين علي",
            "email": "bbb@yahoo.com",
            "phone": "0587412365",
            "photo": "https://seyanty.info/storage/employees/asqBboVoMqtGjHVSTMav7YwyfXvVJ87sQLTnBlur.png",
            "job_title": "مهندس إصلاحات",
            "overview": "مهندس إصلاحات علي درجه عالية من الكفاءة",
            "status": "inactive",
            "is_blocked": "active",
            "orders_count": 0
        },
        {
            "id": 42,
            "name": "عبدالرحمن محمد",
            "email": "test@gmail.com",
            "phone": "0587412010",
            "photo": "https://seyanty.info/storage/employees/wF0IxqGeLc6KFVc6TBkFf6ZGEoWdBFbqEH8vqr40.jpg",
            "job_title": "صيانة غسالات",
            "overview": "<p>صيانة غسالات حديثة وقديمة بأعلى حودة وأقصر وقت ,احسن الأسعار</p>",
            "status": "inactive",
            "is_blocked": "active",
            "orders_count": 0
        },
        {
            "id": 22,
            "name": "ابراهيم",
            "email": "admin5@admin.com",
            "phone": "0511223344",
            "photo": "https://seyanty.info/storage/employees/AYyym6LhB96L4OpF5DOoBm6nqDjvFuwd9LC16mgZ.webp",
            "job_title": "مهندس 🧑‍🔧",
            "overview": "مهندس عالي في العمل الكل يشهد له بالكفء 🧑‍🔧",
            "status": "inactive",
            "is_blocked": "active",
            "orders_count": 0
        }
    ],
    "pagination": {
        "current_page": 1,
        "first_page_url": 1,
        "last_page": 1,
        "last_page_url": 1,
        "next_page_url": null,
        "path": "https://seyanty.info/api/dashboard/employees",
        "per_page": 100,
        "prev_page_url": null,
        "total": 9,
        "isEmpty": false,
        "isNotEmpty": true,
        "hasMorePages": false,
        "hasPages": false
    }
}
```

**Validation Checks:**
- Response status is "success"
- Response code is 200
- Response message is "success"
- Data array contains exactly 9 employee objects
- Each employee object contains all required fields (id, name, email, phone, photo, job_title, overview, status, is_blocked, orders_count)
- Pagination object is present with correct structure
- Total count matches database record count (9)

# Notes
- This is the primary positive test case for the GET employees endpoint
- Uses default pagination settings (limit=100, page=1)
- Status filter is empty to return all employees regardless of status
- Token must be obtained from valid login prior to test execution

# Attachments


```shell
#!/usr/bin/env bash

set -euo pipefail

BASE_URL="https://seyanty.info/api/dashboard"

# Authenticate and extract the Bearer token
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

# Fetch employees using the auth token
get_employees() {
  local token="$1"
  local query_string="${2:-}"

  curl --silent --show-error --location --request GET "${BASE_URL}/employees?${query_string}" \
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
get_employees "$AUTH_TOKEN" "pagination=on&limit=100&page=1" | jq .

```
---

*Last Updated: 2026-08-23*