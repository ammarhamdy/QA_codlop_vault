---
tc_id: TC-API-DASH-ADMIN-DELETE-018
title: Verify a deleted admin cannot access the dashboard
priority:
  - High
status:
  - completed
type:
  - API
linked_requirement: REQ-API-DASH-ADMIN-DELETE
tags:
  - test-case
  - security
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `DELETE https://seyanty.info/api/dashboard/admins/{id}` |
| Path Variable | `id` = id of the target admin |
| Content-Type | `application/json` |
| Authorization | `Bearer <valid_token>` |
| Target Admin Token | `Bearer <target_admin_token>` |
| Dashboard Endpoint | `GET https://seyanty.info/api/dashboard/admins` |

# Preconditions
- The target admin (to be deleted) holds its own valid token and can currently access the dashboard.
- The requesting admin holds a privileged token with permission to delete admins.

# Steps
1. Verify the target admin's token works by calling the dashboard endpoint.
2. Send a `DELETE` request to `https://seyanty.info/api/dashboard/admins/{id}` with the privileged token.
3. Send a request to the dashboard endpoint using the deleted admin's token.
4. Attempt a fresh login with the deleted admin's credentials.

# Expected Result
- The `DELETE` request returns `200 OK` with `"تم الحذف بنجاح"`.
- Subsequent requests with the deleted admin's token return `401 Unauthorized`.
- Login attempts with the deleted admin's credentials fail.
- The deleted admin no longer has any access to the dashboard.

# Notes
- Exact login error message may vary by backend; focus on access denial.

# Attachments
