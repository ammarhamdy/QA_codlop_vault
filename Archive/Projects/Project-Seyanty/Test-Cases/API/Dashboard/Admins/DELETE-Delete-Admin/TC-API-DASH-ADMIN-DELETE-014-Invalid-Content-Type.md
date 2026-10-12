---
tc_id: TC-API-DASH-ADMIN-DELETE-014
title: Delete an admin with an invalid Content-Type header
priority:
  - Low
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
| Content-Type | `application/xml` / `text/plain` *(unsupported)* |
| Authorization | `Bearer <valid_token>` |

# Preconditions
- User is logged in to the dashboard as a privileged admin with a valid token.

# Steps
1. Send a `DELETE` request to `https://seyanty.info/api/dashboard/admins/23`.
2. Set header `Authorization: Bearer <valid_token>`.
3. Set header `Content-Type: application/xml` (or `text/plain`).
4. Send the request and capture the response.

# Expected Result
- If the endpoint strictly validates `Content-Type`, the API returns `415 Unsupported Media Type` (or `400 Bad Request`) and the deletion is rejected.
- Otherwise the request may succeed with `200 OK` and `"تم الحذف بنجاح"` if the body is ignored.

# Notes
- `DELETE` requests typically carry no body; behavior depends on backend middleware.

# Attachments
