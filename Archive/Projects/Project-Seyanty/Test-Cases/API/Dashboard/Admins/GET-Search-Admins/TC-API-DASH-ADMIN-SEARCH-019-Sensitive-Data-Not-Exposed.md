---
tc_id: TC-API-DASH-ADMIN-SEARCH-019
title: Verify sensitive data is not exposed in search response
priority:
  - High
status:
  - completed
type:
  - API
linked_requirement: REQ-API-DASH-ADMIN-SEARCH
tags:
  - test-case
  - security
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `GET https://seyanty.info/api/dashboard/admins-search` |
| Content-Type | `application/json` |
| Authorization | `Bearer <valid_token>` |
| Query Parameters | `key=ali&pagination=on&page=1&limit=100` |

# Preconditions
- User is logged in to the dashboard as an admin with a valid token.
- At least one matching admin record exists.

# Steps
1. Send a `GET` request to `https://seyanty.info/api/dashboard/admins-search?key=ali&pagination=on&page=1&limit=100`.
2. Parse the response body and inspect all admin objects.
3. Verify no sensitive fields such as `password`, `password_hash`, `token`, `remember_token`, or database internals appear anywhere in the response.

# Expected Result
- Each admin object contains only `id`, `name`, `email`, `photo`, and `is_blocked`.
- No hashed/encrypted passwords, authentication tokens, or internal identifiers are exposed.
- The `data` and `pagination` structure matches the documented schema.

# Notes
- If any sensitive data appears, log a security bug with priority High.

# Attachments
