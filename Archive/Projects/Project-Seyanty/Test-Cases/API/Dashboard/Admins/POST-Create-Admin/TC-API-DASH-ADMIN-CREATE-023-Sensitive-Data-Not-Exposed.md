---
tc_id: TC-API-DASH-ADMIN-CREATE-023
title: Verify sensitive data is not exposed in create admin response
priority:
  - High
status:
  - completed
type:
  - API
linked_requirement: REQ-API-DASH-ADMIN-CREATE
tags:
  - test-case
  - security
run_result: pass
---

# Test Data
| Field         | Value                                            |
| ------------- | ------------------------------------------------ |
| Endpoint      | `POST https://seyanty.info/api/dashboard/admins` |
| Content-Type  | `multipart/form-data`                            |
| Authorization | `Bearer <valid_token>`                           |
| name          | `Admin-10`                                       |
| email         | `admin-10@mail.com`                              |
| password      | `Admin#123`                                      |
| photo         | `/home/am/Pictures/color/violet.png`             |

# Preconditions
- User is logged in to the dashboard as an admin with a valid token.

# Steps
1. Send a `POST` request to `https://seyanty.info/api/dashboard/admins` with the form fields above.
2. Parse the response body and inspect all keys and values.
3. Verify that no sensitive fields such as `password`, `password_hash`, `token`, `remember_token`, or database internals appear anywhere in the response.

# Expected Result
- The response body contains only `status`, `code`, `message`, and `data`.
- `data` contains only `id`, `name`, `email`, `photo`, and `status`.
- The submitted password and any hashed/encrypted password values are NOT returned in the response.
- No authentication tokens or internal identifiers are exposed.

# Notes
- If any sensitive data appears, log a security bug with priority High.

# Attachments
