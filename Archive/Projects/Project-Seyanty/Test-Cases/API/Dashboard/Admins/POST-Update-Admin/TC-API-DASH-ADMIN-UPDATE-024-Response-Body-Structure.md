---
tc_id: TC-API-DASH-ADMIN-UPDATE-024
title: Verify the response body structure for update admin
priority:
  - High
status:
  - completed
type:
  - API
linked_requirement: REQ-API-DASH-ADMIN-UPDATE
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `POST https://seyanty.info/api/dashboard/admins/{id}` |
| Path Variable | `id` = existing admin id (e.g., `16`) |
| Content-Type | `multipart/form-data` |
| Authorization | `Bearer <valid_token>` |
| _method | `put` |

# Preconditions
- User is logged in to the dashboard as a privileged admin with a valid token.
- An admin record with the given `id` exists.

# Steps
1. Send a `POST` request to `https://seyanty.info/api/dashboard/admins/16`.
2. Parse the response body as JSON.
3. Verify the presence and data types of top-level keys `status`, `code`, `message`, and `data`.
4. Verify the `data` object contains `id`, `name`, `email`, `photo`, and `is_blocked`.

# Expected Result
- Response body:
```json
{
    "status": "success",
    "code": 200,
    "message": "تم تعديل البيانات بنجاح",
    "data": {
        "id": 16,
        "name": "admin-1",
        "email": "admin-7@mail.com",
        "photo": "https://seyanty.info/storage/admins/vt0zWFjkMSl7PjrogLScopVgoZy7r0IPnOxd93bI.jpg",
        "is_blocked": "active"
    }
}
```
- `status` is a string (`"success"`), `code` is a number, `message` is a string, `data` is an object.
- `data.id` is a number; `data.name`, `data.email`, `data.photo`, and `data.is_blocked` are strings.

# Notes
- No unexpected or missing keys should appear in the response body.

# Attachments