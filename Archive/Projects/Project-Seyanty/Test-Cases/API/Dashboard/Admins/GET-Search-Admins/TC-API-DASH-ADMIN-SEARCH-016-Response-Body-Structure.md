---
tc_id: TC-API-DASH-ADMIN-SEARCH-016
title: Verify the response body structure for search admins
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
- At least one matching admin record exists.

# Steps
1. Send a `GET` request to `https://seyanty.info/api/dashboard/admins-search?key=ali&pagination=on&page=1&limit=1`.
2. Parse the response body as JSON.
3. Verify the presence and data types of top-level keys `status`, `code`, `message`, `data`, and `pagination`.
4. Verify each admin object contains `id`, `name`, `email`, `photo`, and `is_blocked`.

# Expected Result
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
- `status`, `code`, and `message` describe the result; `data` is an array; `pagination` is an object with the pagination metadata.
- `data[].id` is a number; `data[].name`, `data[].email`, `data[].photo`, and `data[].is_blocked` are strings.

# Notes
- No unexpected or missing keys should appear in the response body.

# Attachments
