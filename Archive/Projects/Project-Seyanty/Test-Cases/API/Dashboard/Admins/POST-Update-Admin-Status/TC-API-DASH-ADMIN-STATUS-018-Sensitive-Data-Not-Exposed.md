---
tc_id: TC-API-DASH-ADMIN-STATUS-018
title: Verify sensitive data is not exposed in update admin status response
priority:
  - High
status:
  - completed
type:
  - API
linked_requirement: REQ-API-DASH-ADMIN-STATUS
tags:
  - test-case
  - security
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
1. Send a `POST` request to `https://seyanty.info/api/dashboard/admins/update-status/22` with a valid token.
2. Parse the response body and inspect all keys and values.
3. Verify no sensitive fields such as `password`, `password_hash`, `token`, `remember_token`, or database internals appear anywhere in the response.

# Expected Result
- The response body contains only `status`, `code`, `message`, and `data`.
- `data` contains only `id`, `name`, `email`, `photo`, and `is_blocked`.
- No hashed/encrypted passwords, authentication tokens, or internal identifiers are exposed.

# Notes
- If any sensitive data appears, log a security bug with priority High.

# Attachments