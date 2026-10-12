---
tc_id: TC-API-DASH-ADMIN-DELETE-017
title: Verify the deleted admin is removed from the admin list
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
| List Endpoint | `GET https://seyanty.info/api/dashboard/admins` |

# Preconditions
- User is logged in to the dashboard as a privileged admin with a valid token.
- An admin record with the given `id` exists and appears in the admin list.

# Steps
1. Send a `GET` request to `https://seyanty.info/api/dashboard/admins` and confirm the admin with `id` is present.
2. Send a `DELETE` request to `https://seyanty.info/api/dashboard/admins/23` with a valid token.
3. Send a `GET` request to `https://seyanty.info/api/dashboard/admins` again.
4. Search the returned list for the deleted admin `id`.

# Expected Result
- The `DELETE` request returns `200 OK` with `"تم الحذف بنجاح"`.
- The subsequent `GET` response does not contain the deleted admin `id`.
- The deletion is reflected immediately in the admin list.

# Notes

# Attachments
