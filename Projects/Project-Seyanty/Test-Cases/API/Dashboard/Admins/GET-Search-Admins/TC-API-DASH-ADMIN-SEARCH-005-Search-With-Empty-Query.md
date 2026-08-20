---
tc_id: TC-API-DASH-ADMIN-SEARCH-005
title: Search admins with an empty query
priority:
  - Medium
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
| Query Parameters | `key=&pagination=on&page=1&limit=10` |

# Preconditions
- User is logged in to the dashboard as an admin with a valid token.

# Steps
1. Send a `GET` request to `https://seyanty.info/api/dashboard/admins-search?key=&pagination=on&page=1&limit=10`.
2. Set header `Authorization: Bearer <valid_token>`.
3. Set header `Content-Type: application/json`.
4. Send the request and capture the response.

# Expected Result
- The API returns HTTP status code `200 OK`.
- The endpoint behaves as an empty search: either `data` is an empty array `[]`, or all admins are returned (depending on backend validation).
- If the backend validates the query, a validation error with status `400`/`422` may be returned.

# Notes
- Behavior depends on backend: whether an empty `key` is treated as "no filter" or as invalid.

# Attachments
```python
import json
import requests

url = "https://seyanty.info/api/dashboard/admins-search"

params = {
    "key": "",
    "pagination": "on",
    "page": 1,
    "limit": 100,
}

headers = {
    "User-Agent": "Apidog/1.0.0 (https://apidog.com)",
    "Authorization": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3NleWFudHkuaW5mby9hcGkvZGFzaGJvYXJkL2xvZ2luIiwiaWF0IjoxNzg3MjEzNjAxLCJleHAiOjE3ODg0MjMyMDEsIm5iZiI6MTc4NzIxMzYwMSwianRpIjoiSEtJQ3V0WnlDTHB5NXVqZSIsInN1YiI6IjEiLCJwcnYiOiJkZjg4M2RiOTdiZDA1ZWY4ZmY4NTA4MmQ2ODZjNDVlODMyZTU5M2E5In0.07XcMryz0GFYjRyfAFz9zkyA25lJ4lghj1GiqXLUALA",
    "Accept": "*/*",
}

response = requests.get(url, headers=headers, params=params)

print(f"Status Code: {response.status_code}")
print(json.dumps(response.json(), indent=4))
```