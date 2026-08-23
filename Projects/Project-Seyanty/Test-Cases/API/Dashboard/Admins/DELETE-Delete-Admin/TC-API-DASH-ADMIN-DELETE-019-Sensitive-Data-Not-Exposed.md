---
tc_id: TC-API-DASH-ADMIN-DELETE-019
title: Verify sensitive data is not exposed in delete admin response
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
| Path Variable | `id` = existing admin id (e.g., `23`) |
| Content-Type | `application/json` |
| Authorization | `Bearer <valid_token>` |

# Preconditions
- User is logged in to the dashboard as a privileged admin with a valid token.
- An admin record with the given `id` exists.

# Steps
1. Send a `DELETE` request to `https://seyanty.info/api/dashboard/admins/23` with a valid token.
2. Repeat with a non-existent `id` to capture the error response.
3. Parse the response bodies and inspect all keys and values.
4. Verify no sensitive fields such as `password`, `password_hash`, `token`, `remember_token`, or database internals appear anywhere in the responses.

# Expected Result
- The success response contains only `status`, `code`, `message`, and `data` (empty array).
- The error response contains only `status`, `code`, `message`, and `data` (empty array).
- No hashed/encrypted passwords, authentication tokens, or internal identifiers are exposed.

# Notes
- If any sensitive data appears, log a security bug with priority High.

# Attachments
