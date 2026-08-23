---
tc_id: TC-API-DASH-ADMIN-DELETE-007
title: Delete a deactivated admin
priority:
  - Medium
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
| Path Variable | `id` = id of a deactivated/inactive admin |
| Content-Type | `application/json` |
| Authorization | `Bearer <valid_token>` |

# Preconditions
- User is logged in to the dashboard as a privileged admin with a valid token.
- An admin with status `inactive`/`deactivated` exists in the system.

# Steps
1. Confirm the target admin exists with a deactivated status.
2. Send a `DELETE` request to `https://seyanty.info/api/dashboard/admins/{id}`.
3. Set header `Authorization: Bearer <valid_token>`.
4. Set header `Content-Type: application/json`.
5. Send the request and capture the response.

# Expected Result
- The API returns HTTP status code `200 OK`.
- Response body:
```json
{
    "status": "success",
    "code": 200,
    "message": "تم الحذف بنجاح",
    "data": []
}
```
- The deactivated admin is removed from the database.
- A second delete request for the same `id` returns `404 Not Found` with `"هذا الادمن غير موجود"`.

# Notes

# Attachments
