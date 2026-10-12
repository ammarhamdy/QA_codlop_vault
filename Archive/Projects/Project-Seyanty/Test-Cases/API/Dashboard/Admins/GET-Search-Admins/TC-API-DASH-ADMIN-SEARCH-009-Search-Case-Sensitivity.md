---
tc_id: TC-API-DASH-ADMIN-SEARCH-009
title: Verify search case sensitivity
priority:
  - Medium
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
| Query Parameters | `key=ADMIN` and `key=admin` (two runs) |

# Preconditions
- User is logged in to the dashboard as an admin with a valid token.
- An admin named `admin` exists in the system.

# Steps
1. Send a `GET` request to `https://seyanty.info/api/dashboard/admins-search?key=admin&pagination=on&page=1&limit=10` and record the results.
2. Send a `GET` request to `https://seyanty.info/api/dashboard/admins-search?key=ADMIN&pagination=on&page=1&limit=10` and record the results.
3. Compare the `data` arrays and `pagination.total` values.

# Expected Result
- Both queries return the same matching admin(s), indicating the search is case-insensitive.
- If the search is case-sensitive, `key=ADMIN` returns fewer or no results compared to `key=admin`; document the actual backend behavior.

# Notes
- The expected default is case-insensitive name matching.

# Attachments
