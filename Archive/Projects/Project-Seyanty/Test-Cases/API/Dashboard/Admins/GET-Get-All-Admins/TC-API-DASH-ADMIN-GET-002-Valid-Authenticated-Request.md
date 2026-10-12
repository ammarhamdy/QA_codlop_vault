---
tc_id: TC-API-DASH-ADMIN-GET-002
title: Get all admins with a valid authenticated request
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
| Query Parameters | `pagination=on&page=1&limit=1` |

# Preconditions
- User is logged in to the dashboard as an admin with a valid token.
- At least one admin record exists in the system.

# Steps
1. Send a `GET` request to `https://seyanty.info/api/dashboard/admins?pagination=on&page=1&limit=1`.
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
- The response is returned only when a valid bearer token is provided.

# Notes

# Attachments
