---
tc_id: TC-API-DASH-ADMIN-SEARCH-002
title: Search admins by exact admin name
priority:
  - High
status:
  - completed
type:
  - API
linked_requirement: REQ-API-DASH-ADMIN-SEARCH
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `GET https://seyanty.info/api/dashboard/admins-search` |
| Content-Type | `application/json` |
| Authorization | `Bearer <valid_token>` |
| Query Parameters | `key=admin&pagination=on&page=1&limit=10` |

# Preconditions
- User is logged in to the dashboard as an admin with a valid token.
- An admin named exactly `admin` exists in the system.

# Steps
1. Send a `GET` request to `https://seyanty.info/api/dashboard/admins-search?key=admin&pagination=on&page=1&limit=10`.
2. Set header `Authorization: Bearer <valid_token>`.
3. Set header `Content-Type: application/json`.
4. Send the request and capture the response.

# Expected Result
- The API returns HTTP status code `200 OK`.
- The `data` array contains the admin whose name is exactly `admin`.
- `pagination.total` reflects the number of matching admins.

# Notes

# Attachments
```python
import json
import requests

url = "https://seyanty.info/api/dashboard/admins-search"
params = {
    "key": "admin-",
    "pagination": "on",
    "page": 1,
    "limit": 100,
}
headers = {
    "User-Agent": "Apidog/1.0.0 (https://apidog.com)",
    "Authorization": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3NleWFudHkuaW5mby9hcGkvZGFzaGJvYXJkL2xvZ2luIiwiaWF0IjoxNzg3MjEzNTMwLCJleHAiOjE3ODg0MjMxMzAsIm5iZiI6MTc4NzIxMzUzMCwianRpIjoiOHVTOUFjQXZ5NmdQYmh6byIsInN1YiI6IjEiLCJwcnYiOiJkZjg4M2RiOTdiZDA1ZWY4ZmY4NTA4MmQ2ODZjNDVlODMyZTU5M2E5In0.tgxdrUakopDs-7PWaQesKYRCShzcPsojGQ6wd8sjmog",
    "Accept": "*/*",
}

response = requests.get(url, headers=headers, params=params)

# Pretty print the JSON response
print(json.dumps(response.json(), indent=4))
```
