---
tc_id: TC-API-DASH-ADMIN-CREATE-010
title: Create admin with missing password field
priority:
  - High
status:
  - completed
type:
  - API
linked_requirement: REQ-API-DASH-ADMIN-CREATE
tags:
  - test-case
run_result: pass
---

# Test Data
| Field         | Value                                            |
| ------------- | ------------------------------------------------ |
| Endpoint      | `POST https://seyanty.info/api/dashboard/admins` |
| Content-Type  | `multipart/form-data`                            |
| Authorization | `Bearer <valid_token>`                           |
| name          | `Admin-10`                                       |
| email         | `admin-10@mail.com`                              |
| password      | *(omitted)*                                      |
| photo         | `/home/am/Pictures/color/violet.png`             |

# Preconditions
- User is logged in to the dashboard as an admin with a valid token.

# Steps
1. Send a `POST` request to `https://seyanty.info/api/dashboard/admins`.
2. Set header `Authorization: Bearer <valid_token>`.
3. Set header `Content-Type: multipart/form-data`.
4. Add form fields `name`, `phone`, `email`, and `photo`, omitting `password`.
5. Send the request and capture the response.

# Expected Result
- The API returns HTTP status code `400 Bad Request` or `422 Unprocessable Entity`.
- Response body:
```json
{
    "status": "error",
    "code": 400,
    "message": ["كلمة المرور مطلوبة."],
    "data": []
}
```
- No new admin record is created.

# Notes

# Attachments
```python
import json
import requests
import uuid 

unique_id = uuid.uuid4().hex[:8]

url = "https://seyanty.info/api/dashboard/admins"

headers = {
    "User-Agent": "Apidog/1.0.0 (https://apidog.com)",
    "Authorization": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3NleWFudHkuaW5mby9hcGkvZGFzaGJvYXJkL2xvZ2luIiwiaWF0IjoxNzg3MjEzNjAxLCJleHAiOjE3ODg0MjMyMDEsIm5iZiI6MTc4NzIxMzYwMSwianRpIjoiSEtJQ3V0WnlDTHB5NXVqZSIsInN1YiI6IjEiLCJwcnYiOiJkZjg4M2RiOTdiZDA1ZWY4ZmY4NTA4MmQ2ODZjNDVlODMyZTU5M2E5In0.07XcMryz0GFYjRyfAFz9zkyA25lJ4lghj1GiqXLUALA",
    "Accept": "*/*",
}

data = {
    "name": f"admin-{unique_id}",
    "email": f"admin-{unique_id}@mail.com",
    #"password": "Admin#123",
}

# Ensure the file path exists on your system
file_path = "/home/am/Pictures/profile/user.png"

with open(file_path, "rb") as image_file:
    files = {
        "photo": ("user.png", image_file, "image/png")
    }
    
    # requests automatically handles the multipart/form-data boundary header
    response = requests.post(url, headers=headers, data=data, files=files)

print(f"Status Code: {response.status_code}")
try:
    print(json.dumps(response.json(), indent=4))
except Exception:
    print(response.text)
```