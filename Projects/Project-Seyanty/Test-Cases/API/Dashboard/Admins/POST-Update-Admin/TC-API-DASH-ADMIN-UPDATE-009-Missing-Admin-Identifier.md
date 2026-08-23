---
tc_id: TC-API-DASH-ADMIN-UPDATE-009
title: Update admin with a missing admin identifier
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
| Endpoint | `POST https://seyanty.info/api/dashboard/admins/` *(no id)* |
| Path Variable | `id` = *(omitted)* |
| Content-Type | `multipart/form-data` |
| Authorization | `Bearer <valid_token>` |
| _method | `put` |

# Preconditions
- User is logged in to the dashboard as a privileged admin with a valid token.

# Steps
1. Send a `POST` request to `https://seyanty.info/api/dashboard/admins/` without an `id` in the path.
2. Set header `Authorization: Bearer <valid_token>`.
3. Set header `Content-Type: multipart/form-data`.
4. Add form fields `_method=put`, `name`, and `email`.
5. Send the request and capture the response.

# Expected Result
- The API returns an error status code (`404 Not Found` for an unmatched route, or `422`/`400` if the route resolves with a missing required parameter).
- Response body indicates the route/identifier is missing.
- No admin record is modified.

# Notes
- The identifier is a required path parameter.

# Attachments
```python
import json
import requests

target = ""
url = f"https://seyanty.info/api/dashboard/admins/{target}"

headers = {
    "User-Agent": "Apidog/1.0.0 (https://apidog.com)",
    "Authorization": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3NleWFudHkuaW5mby9hcGkvZGFzaGJvYXJkL2xvZ2luIiwiaWF0IjoxNzg3MjEzNjAxLCJleHAiOjE3ODg0MjMyMDEsIm5iZiI6MTc4NzIxMzYwMSwianRpIjoiSEtJQ3V0WnlDTHB5NXVqZSIsInN1YiI6IjEiLCJwcnYiOiJkZjg4M2RiOTdiZDA1ZWY4ZmY4NTA4MmQ2ODZjNDVlODMyZTU5M2E5In0.07XcMryz0GFYjRyfAFz9zkyA25lJ4lghj1GiqXLUALA",
    "Accept": "*/*",
}

data = {
    "_method": "put",
    "name": "admin-4",
    "email": "admin-1@mail.com",
    "password": "Admin#123"
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