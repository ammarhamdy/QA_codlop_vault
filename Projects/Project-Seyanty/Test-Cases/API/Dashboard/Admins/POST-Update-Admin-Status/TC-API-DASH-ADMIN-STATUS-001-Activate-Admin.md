---
tc_id: TC-API-DASH-ADMIN-STATUS-001
title: Activate an admin
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
| Path Variable | `id` = id of an admin with status `inactive` (e.g., `22`) |
| Content-Type | `application/json` |
| Authorization | `Bearer <valid_token>` |

# Preconditions
- User is logged in to the dashboard as a privileged admin with a valid token.
- The target admin exists and its current `is_blocked` value is `inactive`.

# Steps
1. Send a `POST` request to `https://seyanty.info/api/dashboard/admins/update-status/22`.
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
    "message": "تم تغيير الحالة بنجاح",
    "data": {
        "id": 22,
        "name": "superadmin",
        "email": "superadmin@seyanty.info",
        "photo": "https://seyanty.info/storage/admins/CzUyxcspoVudrsdME9vwk9f2JKtHP2GcixxsyPle.jpg",
        "is_blocked": "active"
    }
}
```
- The admin's status in the database becomes `active`.

# Notes
- Cleanup: toggle the status back to `inactive` after the test to restore the original state.

# Attachments
```python
import json
import requests

url = "https://seyanty.info/api/dashboard/admins/update-status/22"

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