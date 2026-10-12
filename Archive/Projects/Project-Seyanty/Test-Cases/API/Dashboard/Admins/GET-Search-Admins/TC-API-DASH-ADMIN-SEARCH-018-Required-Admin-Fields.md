---
tc_id: TC-API-DASH-ADMIN-SEARCH-018
title: Verify required admin fields are present in search results
priority:
  - High
status:
  - completed
type:
  - API
linked_requirement: REQ-API-DASH-ADMIN-SEARCH
tags:
  - test-case
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
2. Inspect every object in the `data` array.
3. Verify each object contains all required fields: `id`, `name`, `email`, `photo`, and `is_blocked`.

# Expected Result
- Every admin object in `data` contains the following required fields:
  - `id` (number)
  - `name` (string)
  - `email` (string)
  - `photo` (string, URL)
  - `is_blocked` (string)
- No admin object is missing any of these fields.

# Notes

# Attachments
