---
tc_id: TC-API-DASH-ADMIN-STATUS-014
title: Verify the updated admin ID in the response
priority:
  - Medium
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
- An admin record with the given `id` exists.

# Steps
1. Send a `POST` request to `https://seyanty.info/api/dashboard/admins/update-status/22`.
2. Capture the response and record the returned `data.id`.
3. Compare `data.id` with the `id` used in the request path.

# Expected Result
- `data.id` equals the `id` sent in the request path (`22`).
- The returned object corresponds to the correct admin record.

# Notes

# Attachments