---
tc_id: TC-API-DASH-ADMIN-STATUS-013
title: Verify the response body structure for update admin status
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
| Path Variable | `id` = existing admin id (e.g., `22`) |
| Content-Type | `application/json` |
| Authorization | `Bearer <valid_token>` |

# Preconditions
- User is logged in to the dashboard as a privileged admin with a valid token.
- An admin record with the given `id` exists.

# Steps
1. Send a `POST` request to `https://seyanty.info/api/dashboard/admins/update-status/22`.
2. Parse the response body as JSON.
3. Verify the presence and data types of top-level keys `status`, `code`, `message`, and `data`.
4. Verify the `data` object contains `id`, `name`, `email`, `photo`, and `is_blocked`.

# Expected Result
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
- `status` is a string (`"success"`), `code` is a number, `message` is a string, `data` is an object.
- `data.id` is a number; `data.name`, `data.email`, `data.photo`, and `data.is_blocked` are strings.

# Notes
- No unexpected or missing keys should appear in the response body.

# Attachments