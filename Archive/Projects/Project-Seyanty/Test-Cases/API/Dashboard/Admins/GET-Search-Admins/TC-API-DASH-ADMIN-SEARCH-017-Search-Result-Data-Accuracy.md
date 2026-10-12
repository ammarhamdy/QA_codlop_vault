---
tc_id: TC-API-DASH-ADMIN-SEARCH-017
title: Verify search result data accuracy
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
| Known Admin | `id=1`, `name=admin`, `email=admin@admin.com` |

# Preconditions
- User is logged in to the dashboard as an admin with a valid token.
- A known admin record (e.g., `id=1`, `name=admin`, `email=admin@admin.com`) matches the query.

# Steps
1. Send a `GET` request to `https://seyanty.info/api/dashboard/admins-search?key=ali&pagination=on&page=1&limit=100`.
2. Locate the known admin record in the `data` array by `id`.
3. Compare the returned `name`, `email`, `photo`, and `is_blocked` values against the database values.

# Expected Result
- Only admins matching the query appear in `data`.
- The known admin record appears with `name`, `email`, `photo`, and `is_blocked` matching the database state.
- `photo` is a valid URL under `https://seyanty.info/storage/admins/`.

# Notes
- Data must match the database state exactly for the accounts being asserted.

# Attachments
