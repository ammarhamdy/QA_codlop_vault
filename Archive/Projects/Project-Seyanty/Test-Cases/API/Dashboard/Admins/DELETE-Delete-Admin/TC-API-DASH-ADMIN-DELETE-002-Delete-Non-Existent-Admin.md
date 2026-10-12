---
tc_id: TC-API-DASH-ADMIN-DELETE-002
title: Delete an admin that does not exist
priority:
  - High
status:
  - completed
type:
  - API
linked_requirement: REQ-API-DASH-ADMIN-DELETE
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `DELETE https://seyanty.info/api/dashboard/admins/{id}` |
| Path Variable | `id` = a non-existent admin id (e.g., `999999`) |
| Content-Type | `application/json` |
| Authorization | `Bearer <valid_token>` |

# Preconditions
- User is logged in to the dashboard as a privileged admin with a valid token.
- No admin record exists with the given `id`.

# Steps
1. Send a `DELETE` request to `https://seyanty.info/api/dashboard/admins/999999`.
2. Set header `Authorization: Bearer <valid_token>`.
3. Set header `Content-Type: application/json`.
4. Send the request and capture the response.

# Expected Result
- The API returns HTTP status code `404 Not Found`.
- Response body:
```json
{
    "status": "error",
    "code": 404,
    "message": "هذا الادمن غير موجود",
    "data": []
}
```
- No changes occur in the database.

# Notes

# Attachments
