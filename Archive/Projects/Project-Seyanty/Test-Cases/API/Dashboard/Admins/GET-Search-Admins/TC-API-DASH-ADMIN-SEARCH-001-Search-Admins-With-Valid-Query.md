---
tc_id: TC-API-DASH-ADMIN-SEARCH-001
title: Search admins with a valid query
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
| Query Parameters | `key=ali&pagination=on&page=1&limit=1` |

# Preconditions
- User is logged in to the dashboard as an admin with a valid token.
- At least one admin whose name contains `ali` exists in the system.

# Steps
1. Send a `GET` request to `https://seyanty.info/api/dashboard/admins-search?key=ali&pagination=on&page=1&limit=1`.
2. Set header `Authorization: Bearer <valid_token>`.
3. Set header `Content-Type: application/json`.
4. Send the request and capture the response.

# Expected Result
- The API returns HTTP status code `200 OK`.
- Response body:
```json
{
    "status": "success",
    "code": 200,
    "message": "",
    "data": [
        {
            "id": 1,
            "name": "admin",
            "email": "admin@admin.com",
            "photo": "https://seyanty.info/storage/admins/CnrSH8om1ByAIK549psutPXIPyYq98KSNnAYZaT2.jpg",
            "is_blocked": "active"
        }
    ],
    "pagination": {
        "current_page": 1,
        "first_page_url": 1,
        "last_page": 4,
        "last_page_url": 4,
        "next_page_url": "https://seyanty.info/api/dashboard/admins-search?page=2",
        "path": "https://seyanty.info/api/dashboard/admins-search",
        "per_page": 1,
        "prev_page_url": null,
        "total": 4,
        "isEmpty": false,
        "isNotEmpty": true,
        "hasMorePages": true,
        "hasPages": true
    }
}
```
- `data` contains only admins matching the search query and `pagination` contains the pagination metadata.

# Notes
- Use a query string that is known to match existing admin names in the test environment.

# Attachments
```python
import requests
import json

url = "https://seyanty.info/api/dashboard/admins-search"

params = {
    "key": "admin-1@mail.com",
    "pagination": "on",
    "page": 1,
    "limit": 100,
}

headers = {
    "User-Agent": "Apidog/1.0.0 https://apidog.com",
    "Authorization": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3NleWFudHkuaW5mby9hcGkvZGFzaGJvYXJkL2xvZ2luIiwiaWF0IjoxNzg3MjA3MDc5LCJleHAiOjE3ODg0MTY2NzksIm5iZiI6MTc4NzIwNzA3OSwianRpIjoidlZieWdiV0Z4TzN2Nkc0RyIsInN1YiI6IjEiLCJwcnYiOiJkZjg4M2RiOTdiZDA1ZWY4ZmY4NTA4MmQ2ODZjNDVlODMyZTU5M2E5In0.5rJR2ZEeEj1e_u7nf1u3KArBH0Rjty9E9bl_UBncW3E",
    "Accept": "*/*",
}

response = requests.get(url, headers=headers, params=params)

print(f"Status Code: {response.status_code}\n")
#print(response.text)
print(json.dumps(response.json(), indent=4))
```

