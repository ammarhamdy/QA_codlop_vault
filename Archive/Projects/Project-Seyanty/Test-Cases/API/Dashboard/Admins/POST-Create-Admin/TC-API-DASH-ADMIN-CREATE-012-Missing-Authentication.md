---
tc_id: TC-API-DASH-ADMIN-CREATE-012
title: Create admin without authentication token
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
| Authorization | *(omitted)*                                      |
| name          | `Admin-10`                                       |
| email         | `admin-10@mail.com`                              |
| password      | `Admin#123`                                      |
| photo         | `/home/am/Pictures/color/violet.png`             |

# Preconditions
- No `Authorization` header is sent with the request.

# Steps
1. Send a `POST` request to `https://seyanty.info/api/dashboard/admins`.
2. Do NOT include the `Authorization` header.
3. Set header `Content-Type: multipart/form-data`.
4. Add all required form fields.
5. Send the request and capture the response.

# Expected Result
- The API returns HTTP status code `401 Unauthorized`.
- The request is rejected and no new admin record is created.
- Response body indicates missing/invalid authentication.

# Notes
- Exact error message may vary by backend; focus on the HTTP status code and the absence of data creation.

# Attachments
```python
import json
import requests
import uuid 

unique_id = uuid.uuid4().hex[:8]

url = "https://seyanty.info/api/dashboard/admins"

headers = {
    "User-Agent": "Apidog/1.0.0 (https://apidog.com)",
    "Authorization": "Bearer ",
    "Accept": "*/*",
}

data = {
    "name": f"admin-{unique_id}",
    "email": f"admin-{unique_id}@mail.com",
    "password": "Admin#123",
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
    print(json.dumps(response.json(), indent=4, ensure_ascii=False))
except Exception:
    print(response.text)
```