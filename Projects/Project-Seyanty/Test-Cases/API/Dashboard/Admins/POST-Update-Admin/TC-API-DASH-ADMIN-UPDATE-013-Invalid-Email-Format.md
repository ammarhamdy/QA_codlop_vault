---
tc_id: TC-API-DASH-ADMIN-UPDATE-013
title: Update admin with an invalid email format
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
| email | `admin-7` (no domain / invalid format) |

# Preconditions
- User is logged in to the dashboard as a privileged admin with a valid token.
- An admin record with the given `id` exists.

# Steps
1. Send a `POST` request to `https://seyanty.info/api/dashboard/admins/16`.
2. Set header `Authorization: Bearer <valid_token>`.
3. Set header `Content-Type: multipart/form-data`.
4. Add form fields with `email` set to an invalid format (e.g., `admin-7`, `admin-7@@mail`, `admin-7@`).
5. Send the request and capture the response.

# Expected Result
- The API returns HTTP status code `400 Bad Request` or `422 Unprocessable Entity`.
- Response body contains a validation message for the invalid email format.
- The admin record is NOT modified.

# Notes

# Attachments
```python
import json
import requests

target = "24"
url = f"https://seyanty.info/api/dashboard/admins/{target}"

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


file_path = "/home/am/Pictures/profile/male/vector-men-profile-2.jpeg"

def post_update_admin(data):
	global file_path
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


for mail in invalid_emails:
	print(mail)
	post_update_admin(
		{
		    "_method": "put",
		    "name": "admin-4",
		    "email": mail,
		    "password": "Admin#123"
		}
	)
	print()

```