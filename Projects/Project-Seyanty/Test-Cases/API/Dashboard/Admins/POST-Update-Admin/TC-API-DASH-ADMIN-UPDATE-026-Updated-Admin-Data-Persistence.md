---
tc_id: TC-API-DASH-ADMIN-UPDATE-026
title: Verify updated admin data persistence
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
| name | `admin-1` |
| email | `admin-7@mail.com` |
| List Endpoint | `GET https://seyanty.info/api/dashboard/admins` |

# Preconditions
- User is logged in to the dashboard as a privileged admin with a valid token.
- An admin record with the given `id` exists.

# Steps
1. Send a `POST` request to `https://seyanty.info/api/dashboard/admins/16` with the form fields above.
2. Send a `GET` request to `https://seyanty.info/api/dashboard/admins` with a valid token.
3. Locate the admin by `id` in the returned list.
4. Compare the persisted `name`, `email`, and `photo` with the updated values.

# Expected Result
- The update request returns `200 OK` with `"تم تعديل البيانات بنجاح"`.
- The subsequent `GET` response shows the updated values for the admin (`name=admin-1`, `email=admin-7@mail.com`).
- The updated data persists across subsequent reads.

# Notes
- Run at least one additional `GET` request after a short delay to confirm durable persistence.

# Attachments