---
tc_id: TC-API-DASH-ADMIN-UPDATE-027
title: Verify sensitive data is not exposed in update admin response
priority:
  - High
status:
  - completed
type:
  - API
linked_requirement: REQ-API-DASH-ADMIN-UPDATE
tags:
  - test-case
  - security
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

# Preconditions
- User is logged in to the dashboard as a privileged admin with a valid token.
- An admin record with the given `id` exists.

# Steps
1. Send a `POST` request to `https://seyanty.info/api/dashboard/admins/16` with the form fields above.
2. Parse the response body and inspect all keys and values.
3. Verify that no sensitive fields such as `password`, `password_hash`, `token`, `remember_token`, or database internals appear anywhere in the response.

# Expected Result
- The response body contains only `status`, `code`, `message`, and `data`.
- `data` contains only `id`, `name`, `email`, `photo`, and `is_blocked`.
- The submitted/updated password and any hashed/encrypted password values are NOT returned in the response.
- No authentication tokens or internal identifiers are exposed.

# Notes
- If any sensitive data appears, log a security bug with priority High.

# Attachments