---
tc_id: TC-API-DASH-ADMIN-GET-011
title: Verify required admin fields are present in the response
priority:
  - High
status:
  - completed
type:
  - API
linked_requirement: REQ-API-DASH-ADMIN-GET
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Endpoint | `GET https://seyanty.info/api/dashboard/admins` |
| Content-Type | `application/json` |
| Authorization | `Bearer <valid_token>` |
| Query Parameters | `pagination=on&page=1&limit=10` |

# Preconditions
- User is logged in to the dashboard as an admin with a valid token.
- At least one admin record exists in the system.

# Steps
1. Send a `GET` request to `https://seyanty.info/api/dashboard/admins?pagination=on&page=1&limit=10`.
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
