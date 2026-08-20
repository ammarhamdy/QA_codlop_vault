---
tc_id: TC-API-DASH-ADMIN-CREATE-008
title: Create admin with invalid email format
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
| email         | `admin-10` (no domain / invalid format)          |
| password      | `Admin#123`                                      |
| photo         | `/home/am/Pictures/color/violet.png`             |

# Preconditions
- User is logged in to the dashboard as an admin with a valid token.

# Steps
1. Send a `POST` request to `https://seyanty.info/api/dashboard/admins`.
2. Set header `Authorization: Bearer <valid_token>`.
3. Set header `Content-Type: multipart/form-data`.
4. Add form fields with `email` set to an invalid format (e.g., `admin-10`, `admin-10@@mail`, `admin-10@`).
5. Send the request and capture the response.

# Expected Result
- The API returns HTTP status code `400 Bad Request` or `422 Unprocessable Entity`.
- Response body contains a validation message for the invalid email format (e.g., `"صيغة البريد الإلكتروني غير صحيحة."`).
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

invalid_emails = [
    # Missing core components
    "",
    "   ",
    "plainaddress",
    "@missing-local.com",
    "username@",
    "username@.com",
    "username@com",
    "@",
    # Invalid dot placements
    ".username@example.com",
    "username.@example.com",
    "user..name@example.com",
    "user@example..com",
    "user@.example.com",
    "user@example.com.",
    # Multiple / misplaced @ signs
    "user@name@example.com",
    "user@@example.com",
    "user@example@domain.com",
    # Illegal characters & spaces
    "user name@example.com",
    "user@exam ple.com",
    "user<>@example.com",
    "user[name]@example.com",
    "user(name)@example.com",
    "user/name@example.com",
    "user,name@example.com",
    "user:name@example.com",
    "user;name@example.com",
    "user\\name@example.com",
    # Invalid domain / TLD formats
    "username@-example.com",
    "username@example-.com",
    "username@example.c",
    "username@example.123",
    "username@example.com_",
    # Invalid IP literals
    "username@[127.0.0.1",
    "username@127.0.0.1]",
    "username@[127.0.0.999]",
    "username@[2001:db8::1",
    # Length limits violations (RFC 5321)
    ("a" * 65) + "@example.com",
    "user@" + ("a" * 250) + ".com",
]


# Ensure the file path exists on your system
file_path = "/home/am/Pictures/profile/user.png"


def post_create_admin(data):
	global file_path
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


for mail in invalid_emails:
	print(mail)
	post_create_admin({
	    "name": f"admin-{unique_id}",
	    "email": mail,
	    "password": "Admin#123",
	})
	print("")
	


```