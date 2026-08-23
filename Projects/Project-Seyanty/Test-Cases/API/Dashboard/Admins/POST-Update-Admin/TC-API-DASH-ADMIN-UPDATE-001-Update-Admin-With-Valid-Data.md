---
tc_id: TC-API-DASH-ADMIN-UPDATE-001
title: Update an admin with valid data
priority:
  - High
status:
  - completed
type:
  - API
linked_requirement: REQ-API-DASH-ADMIN-UPDATE
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://seyanty.info/api/dashboard/admins/{id}` |
| Path Variable | `id` = existing admin id (e.g., `16`) |
| Content-Type | `multipart/form-data` |
| Authorization | `Bearer <valid_token>` |
| _method | `put` |
| name | `admin-1` |
| email | `admin-7@mail.com` |
| photo | `/home/am/Pictures/color/violet.png` |

# Preconditions
- User is logged in to the dashboard as a privileged admin with a valid token.
- An admin record with the given `id` exists and the target email is not used by another admin.

# Steps
1. Send a `POST` request to `https://seyanty.info/api/dashboard/admins/16`.
2. Set header `Authorization: Bearer <valid_token>`.
3. Set header `Content-Type: multipart/form-data`.
4. Add form fields `_method=put`, `name=admin-1`, `email=admin-7@mail.com`, and `photo=<file>`.
5. Send the request and capture the response.

# Expected Result
- The API returns HTTP status code `200 OK`.
- Response body:
```json
{
    "status": "success",
    "code": 200,
    "message": "تم تعديل البيانات بنجاح",
    "data": {
        "id": 16,
        "name": "admin-1",
        "email": "admin-7@mail.com",
        "photo": "https://seyanty.info/storage/admins/vt0zWFjkMSl7PjrogLScopVgoZy7r0IPnOxd93bI.jpg",
        "is_blocked": "active"
    }
}
```
- The admin record is updated with the submitted values.

# Notes
- Cleanup: restore the original name/email/photo values after the test.

# Attachments
```python
import json
import requests

target = 24
url = f"https://seyanty.info/api/dashboard/admins/{target}"

headers = {
    "User-Agent": "Apidog/1.0.0 (https://apidog.com)",
    "Authorization": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3NleWFudHkuaW5mby9hcGkvZGFzaGJvYXJkL2xvZ2luIiwiaWF0IjoxNzg3MjEzNjAxLCJleHAiOjE3ODg0MjMyMDEsIm5iZiI6MTc4NzIxMzYwMSwianRpIjoiSEtJQ3V0WnlDTHB5NXVqZSIsInN1YiI6IjEiLCJwcnYiOiJkZjg4M2RiOTdiZDA1ZWY4ZmY4NTA4MmQ2ODZjNDVlODMyZTU5M2E5In0.07XcMryz0GFYjRyfAFz9zkyA25lJ4lghj1GiqXLUALA",
    "Accept": "*/*",
}

data = {
    "_method": "put",
    "name": "admin-4",
    "email": "admin-4@mail.com",
}

file_path = "/home/am/Pictures/profile/male/vector-men-profile-2.jpeg"

with open(file_path, "rb") as image_file:
    files = {
        "photo": ("vector-men-profile-2.jpeg", image_file, "image/jpeg")
    }

    # requests automatically generates the multipart/form-data boundary
    response = requests.post(url, headers=headers, data=data, files=files)

print(f"Status Code: {response.status_code}")
try:
    print(json.dumps(response.json(), indent=4, ensure_ascii=False))
except Exception:
    print(response.text)
```