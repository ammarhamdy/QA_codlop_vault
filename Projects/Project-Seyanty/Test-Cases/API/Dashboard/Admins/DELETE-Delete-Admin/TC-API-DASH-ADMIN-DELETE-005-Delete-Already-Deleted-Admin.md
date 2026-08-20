---
tc_id: TC-API-DASH-ADMIN-DELETE-005
title: Delete an admin that has already been deleted
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
| Path Variable | `id` = id of an admin deleted in a previous step |
| Content-Type | `application/json` |
| Authorization | `Bearer <valid_token>` |

# Preconditions
- User is logged in to the dashboard as a privileged admin with a valid token.
- An admin record was successfully deleted in a previous request, so no record with that `id` exists.

# Steps
1. Send a `DELETE` request to `https://seyanty.info/api/dashboard/admins/{deleted_id}`.
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
- The operation is idempotent with respect to non-existence: no error occurs server-side and no further changes are made.

# Notes
- Expected behavior aligns with the non-existent admin scenario.

# Attachments
