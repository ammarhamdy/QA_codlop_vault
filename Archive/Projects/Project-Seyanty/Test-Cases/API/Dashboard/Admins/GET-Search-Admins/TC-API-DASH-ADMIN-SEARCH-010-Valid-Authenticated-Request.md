---
tc_id: TC-API-DASH-ADMIN-SEARCH-010
title: Search admins with a valid authenticated request
priority:
  - High
status:
  - completed
type:
  - API
linked_requirement: REQ-API-DASH-ADMIN-SEARCH
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `GET https://seyanty.info/api/dashboard/admins-search` |
| Content-Type | `application/json` |
| Authorization | `Bearer <valid_token>` |
| Query Parameters | `key=ali&pagination=on&page=1&limit=1` |

# Preconditions
- User is logged in to the dashboard as an admin with a valid token.
- At least one admin whose name contains `ali` exists in the system.

# Steps
1. Send a `GET` request to `https://seyanty.info/api/dashboard/admins-search?key=ali&pagination=on&page=1&limit=1`.
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
    "message": "",
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
        "last_page": 4,
        "last_page_url": 4,
        "next_page_url": "https://seyanty.info/api/dashboard/admins-search?page=2",
        "path": "https://seyanty.info/api/dashboard/admins-search",
        "per_page": 1,
        "prev_page_url": null,
        "total": 4,
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
