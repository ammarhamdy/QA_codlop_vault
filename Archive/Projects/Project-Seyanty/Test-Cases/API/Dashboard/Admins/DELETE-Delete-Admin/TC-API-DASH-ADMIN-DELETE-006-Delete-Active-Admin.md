---
tc_id: TC-API-DASH-ADMIN-DELETE-006
title: Delete an active admin
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
| Path Variable | `id` = id of an admin with status `active` |
| Content-Type | `application/json` |
| Authorization | `Bearer <valid_token>` |

# Preconditions
- User is logged in to the dashboard as a privileged admin with a valid token.
- An admin with status `active` exists (e.g., created via the Create Admin endpoint).

# Steps
1. Confirm the target admin exists with status `active` by fetching the admin list.
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
- The active admin is removed from the database regardless of its `active` status.
- The deleted admin can no longer access the dashboard.

# Notes
- Verify deletion by fetching the admin list; the `id` must be absent.

# Attachments
