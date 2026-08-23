---
tc_id: TC-API-DASH-ADMIN-DELETE-016
title: Verify the response body structure for delete admin
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
- An admin record with the given `id` exists.

# Steps
1. Send a `DELETE` request to `https://seyanty.info/api/dashboard/admins/23` with a valid token.
2. Parse the response body as JSON.
3. Verify the presence and data types of top-level keys `status`, `code`, `message`, and `data`.
4. Repeat with a non-existent `id` and verify the error structure.

# Expected Result
- Success response:
```json
{
    "status": "success",
    "code": 200,
    "message": "تم الحذف بنجاح",
    "data": []
}
```
- Error response:
```json
{
    "status": "error",
    "code": 404,
    "message": "هذا الادمن غير موجود",
    "data": []
}
```
- `status` is a string, `code` is a number, `message` is a string, `data` is an empty array.

# Notes
- No unexpected or missing keys should appear in either response.

# Attachments
