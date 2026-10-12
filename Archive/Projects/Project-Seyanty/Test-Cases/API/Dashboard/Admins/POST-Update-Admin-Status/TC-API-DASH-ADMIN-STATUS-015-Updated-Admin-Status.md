---
tc_id: TC-API-DASH-ADMIN-STATUS-015
title: Verify the updated admin status in the response
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
- The target admin's current `is_blocked` value is known (e.g., `active`).

# Steps
1. Send a `POST` request to `https://seyanty.info/api/dashboard/admins/update-status/22`.
2. Capture the response and record the returned `data.is_blocked`.
3. Compare `data.is_blocked` with the previous value.

# Expected Result
- `data.is_blocked` is toggled from its previous value:
  - `active` becomes `inactive`.
  - `inactive` becomes `active`.
- The response body's `is_blocked` value matches the updated database state.

# Notes

# Attachments