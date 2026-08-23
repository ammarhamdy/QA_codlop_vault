---
tc_id: TC-API-DASH-ADMIN-DELETE-001
title: Delete an admin using a valid identifier
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
| Path Variable | `id` = existing admin id (e.g., `23`) |
| Content-Type | `application/json` |
| Authorization | `Bearer <valid_token>` |

# Preconditions
- User is logged in to the dashboard as a privileged admin with a valid token.
- An admin record with the given `id` exists in the system and is not the current authenticated admin.

# Steps
1. Send a `DELETE` request to `https://seyanty.info/api/dashboard/admins/23`.
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
    "message": "تم الحذف بنجاح",
    "data": []
}
```
- The admin record is removed from the database.
- The deleted admin can no longer log in or access the dashboard.

# Notes
- Cleanup: ensure the deleted admin is not the account performing the deletion to avoid removing the active session.
- Verify deletion by fetching the admin list; the deleted `id` must be absent.

# Attachments
