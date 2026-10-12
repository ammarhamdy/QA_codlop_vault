---
tc_id: TC-API-DASH-ADMIN-STATUS-016
title: Verify admin data is preserved after a status update
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
| List Endpoint | `GET https://seyanty.info/api/dashboard/admins` |

# Preconditions
- User is logged in to the dashboard as a privileged admin with a valid token.
- An admin record with the given `id` exists; its `name`, `email`, and `photo` are known before the update.

# Steps
1. Record the target admin's `name`, `email`, and `photo` (from the admin list or the response of a previous call).
2. Send a `POST` request to `https://seyanty.info/api/dashboard/admins/update-status/22`.
3. Send a `GET` request to `https://seyanty.info/api/dashboard/admins` and locate the admin by `id`.
4. Compare `name`, `email`, and `photo` before and after the status update.

# Expected Result
- The status update returns `200 OK` with `"تم تغيير الحالة بنجاح"`.
- Only `is_blocked` changes.
- `name`, `email`, and `photo` remain unchanged after the status update.

# Notes

# Attachments