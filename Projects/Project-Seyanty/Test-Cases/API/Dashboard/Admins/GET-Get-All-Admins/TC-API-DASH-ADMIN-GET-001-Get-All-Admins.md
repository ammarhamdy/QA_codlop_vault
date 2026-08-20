---
tc_id: TC-API-DASH-ADMIN-GET-001
title: Get all admins successfully
priority:
  - High
status:
  - completed
type:
  - API
linked_requirement: REQ-API-DASH-ADMIN-GET
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `GET https://seyanty.info/api/dashboard/admins` |
| Content-Type | `application/json` |
| Authorization | `Bearer <valid_token>` |
| Query Parameters | `pagination=on&page=1&limit=10` |

# Preconditions
- User is logged in to the dashboard as an admin with a valid token.
- At least one admin record exists in the system.

# Steps
1. Send a `GET` request to `https://seyanty.info/api/dashboard/admins?pagination=on&page=1&limit=10`.
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
    "message": "success",
    "data": [
        {
            "id": 1,
            "name": "admin",
            "email": "admin@admin.com",
            "photo": "https://seyanty.info/storage/admins/CnrSH8om1ByAIK549psutPXIPyYq98KSNnAYZaT2.jpg",
            "is_blocked": "active"
        }
    ],
    "pagination": {
        "current_page": 1,
        "first_page_url": 1,
        "last_page": 5,
        "last_page_url": 5,
        "next_page_url": "https://seyanty.info/api/dashboard/admins?page=2",
        "path": "https://seyanty.info/api/dashboard/admins",
        "per_page": 1,
        "prev_page_url": null,
        "total": 5,
        "isEmpty": false,
        "isNotEmpty": true,
        "hasMorePages": true,
        "hasPages": true
    }
}
```
- `data` is an array of admin objects and `pagination` contains the pagination metadata.

# Notes
- Use the `limit` parameter to control the number of admins returned per page.

# Attachments
```sh
curl --location --request GET 'https://seyanty.info/api/dashboard/admins?pagination=on&page=1&limit=1' \
--header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
--header 'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3NleWFudHkuaW5mby9hcGkvZGFzaGJvYXJkL2xvZ2luIiwiaWF0IjoxNzg3MTM4MTE0LCJleHAiOjE3ODgzNDc3MTQsIm5iZiI6MTc4NzEzODExNCwianRpIjoiVVl5ZkhEYVNvQWFmYjJrVyIsInN1YiI6IjE5IiwicHJ2IjoiZGY4ODNkYjk3YmQwNWVmOGZmODUwODJkNjg2YzQ1ZTgzMmU1OTNhOSJ9.FsreG4jFivmiwaMO6aSoeprgg_NrJegX0ckqF1vnWBk' \
--header 'Accept: */*' \
--header 'Host: seyanty.info' \
--header 'Connection: keep-alive'
```

