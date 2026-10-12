---
tc_id: TC-API-DASH-ADMIN-STATUS-006
title: Update admin status with an invalid admin ID
priority:
  - High
status:
  - completed
type:
  - API
linked_requirement: REQ-API-DASH-ADMIN-STATUS
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://seyanty.info/api/dashboard/admins/update-status/{id}` |
| Path Variable | `id` = invalid value (e.g., `abc`, `-1`, `0`, `12.5`) |
| Content-Type | `application/json` |
| Authorization | `Bearer <valid_token>` |

# Preconditions
- User is logged in to the dashboard as a privileged admin with a valid token.

# Steps
1. Send a `POST` request to `https://seyanty.info/api/dashboard/admins/update-status/abc` (repeat with `-1`, `0`, and `12.5`).
2. Set header `Authorization: Bearer <valid_token>`.
3. Set header `Content-Type: application/json`.
4. Send the request and capture the response.

# Expected Result
- The API returns an error status code (`400 Bad Request` for a malformed identifier, or `404 Not Found` if no admin matches the identifier).
- Response body indicates the identifier is invalid or the admin does not exist.
- No admin status is changed.

# Notes

# Attachments
```python
import json
import requests

target = "*/"
url = f"https://seyanty.info/api/dashboard/admins/update-status/{target}"

headers = {
    "User-Agent": "Apidog/1.0.0 (https://apidog.com)",
    "Authorization": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3NleWFudHkuaW5mby9hcGkvZGFzaGJvYXJkL2xvZ2luIiwiaWF0IjoxNzg3MjEzNjAxLCJleHAiOjE3ODg0MjMyMDEsIm5iZiI6MTc4NzIxMzYwMSwianRpIjoiSEtJQ3V0WnlDTHB5NXVqZSIsInN1YiI6IjEiLCJwcnYiOiJkZjg4M2RiOTdiZDA1ZWY4ZmY4NTA4MmQ2ODZjNDVlODMyZTU5M2E5In0.07XcMryz0GFYjRyfAFz9zkyA25lJ4lghj1GiqXLUALA",
    "Accept": "*/*",
}

response = requests.post(url, headers=headers)

print(f"Status Code: {response.status_code}")
try:
    print(json.dumps(response.json(), indent=4, ensure_ascii=False))
except Exception:
    print(response.text)
```