---
tc_id: TC-API-DASH-ADMIN-CREATE-020
title: Verify the response body structure for create admin
priority:
  - High
status:
  - completed
type:
  - API
linked_requirement: REQ-API-DASH-ADMIN-CREATE
tags:
  - test-case
run_result: pass
---

# Test Data
| Field         | Value                                            |
| ------------- | ------------------------------------------------ |
| Endpoint      | `POST https://seyanty.info/api/dashboard/admins` |
| Content-Type  | `multipart/form-data`                            |
| Authorization | `Bearer <valid_token>`                           |
| name          | `Admin-10`                                       |
| email         | `admin-10@mail.com`                              |
| password      | `Admin#123`                                      |
| photo         | `/home/am/Pictures/color/violet.png`             |

# Preconditions
- User is logged in to the dashboard as an admin with a valid token.

# Steps
1. Send a `POST` request to `https://seyanty.info/api/dashboard/admins` with valid form fields.
2. Parse the response body as JSON.
3. Verify the presence and data types of top-level keys `status`, `code`, `message`, and `data`.
4. Verify the `data` object contains `id`, `name`, `email`, `photo`, and `status`.

# Expected Result
- Response body:
```json
{
    "status": "success",
    "code": 200,
    "message": "تم انشاء ادمن جديد بنجاح",
    "data": {
        "id": 23,
        "name": "Admin-10",
        "email": "admin-10@mail.com",
        "photo": "https://seyanty.info/storage/admins/Uk3aNiFFqWD0G1k8yEyCyOrOYPIeXSYp7As6q16W.png",
        "status": "active"
    }
}
```
- `status` is a string (`"success"`), `code` is a number, `message` is a string, `data` is an object.
- `data.id` is a number; `data.name`, `data.email`, `data.photo`, and `data.status` are strings.

# Notes
- No unexpected or missing keys should appear in the response body.

# Attachments
