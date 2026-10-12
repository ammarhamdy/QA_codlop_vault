---
tc_id: TC-API-DASH-ADMIN-STATUS-011
title: Update admin status using an invalid HTTP method
priority:
  - Medium
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
| Endpoint | `https://seyanty.info/api/dashboard/admins/update-status/{id}` |
| Path Variable | `id` = existing admin id (e.g., `22`) |
| Method | `GET` / `PUT` / `PATCH` / `DELETE` (instead of `POST`) |
| Content-Type | `application/json` |
| Authorization | `Bearer <valid_token>` |

# Preconditions
- User is logged in to the dashboard as a privileged admin with a valid token.

# Steps
1. Send a request to `https://seyanty.info/api/dashboard/admins/update-status/22` using an HTTP method other than `POST`.
2. Set header `Authorization: Bearer <valid_token>`.
3. Set header `Content-Type: application/json`.
4. Send the request and capture the response.

# Expected Result
- The API returns HTTP status code `405 Method Not Allowed` (or `404 Not Found` if the route is not registered for the method).
- No admin status is changed.

# Notes
- Verify against backend routing behavior.

# Attachments
```python
import json
import requests

target = 22
url = f"https://seyanty.info/api/dashboard/admins/update-status/{target}"

headers = {
    "User-Agent": "Apidog/1.0.0 (https://apidog.com)",
    "Authorization": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3NleWFudHkuaW5mby9hcGkvZGFzaGJvYXJkL2xvZ2luIiwiaWF0IjoxNzg3MjEzNjAxLCJleHAiOjE3ODg0MjMyMDEsIm5iZiI6MTc4NzIxMzYwMSwianRpIjoiSEtJQ3V0WnlDTHB5NXVqZSIsInN1YiI6IjEiLCJwcnYiOiJkZjg4M2RiOTdiZDA1ZWY4ZmY4NTA4MmQ2ODZjNDVlODMyZTU5M2E5In0.07XcMryz0GFYjRyfAFz9zkyA25lJ4lghj1GiqXLUALA",
    "Accept": "*/*",
}

def update_status(http_method: str):
    method = http_method.upper().strip()

    # Dispatch the request dynamically using requests.request
    try:
        response = requests.request(method, url, headers=headers)
    except requests.exceptions.RequestException as e:
        print(f"Request failed: {e}")
        return

    print(f"Status Code: {response.status_code}")

    try:
        print(json.dumps(response.json(), indent=4, ensure_ascii=False))
    except Exception:
        print(response.text)

http_methods = [
    "GET",
    "POST",
    "PUT",
    "PATCH",
    "DELETE",
    "HEAD",
    "OPTIONS",
]

for method in http_methods:
    print(f"\n--- Testing HTTP Method: {method} ---")
    update_status(method)
```