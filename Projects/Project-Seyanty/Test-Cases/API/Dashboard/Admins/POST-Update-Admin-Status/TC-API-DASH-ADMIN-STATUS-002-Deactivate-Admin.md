---
tc_id: TC-API-DASH-ADMIN-STATUS-002
title: Deactivate an admin
priority:
  - High
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
| Endpoint | `POST https://seyanty.info/api/dashboard/admins/update-status/{id}` |
| Path Variable | `id` = id of an admin with status `active` (e.g., `22`) |
| Content-Type | `application/json` |
| Authorization | `Bearer <valid_token>` |

# Preconditions
- User is logged in to the dashboard as a privileged admin with a valid token.
- The target admin exists and its current `is_blocked` value is `active`.

# Steps
1. Send a `POST` request to `https://seyanty.info/api/dashboard/admins/update-status/22`.
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
    "message": "تم تغيير الحالة بنجاح",
    "data": {
        "id": 22,
        "name": "superadmin",
        "email": "superadmin@seyanty.info",
        "photo": "https://seyanty.info/storage/admins/CzUyxcspoVudrsdME9vwk9f2JKtHP2GcixxsyPle.jpg",
        "is_blocked": "inactive"
    }
}
```
- The admin's status in the database becomes `inactive`.

# Notes
- Cleanup: toggle the status back to `active` after the test to restore the original state.

# Attachments