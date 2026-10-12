---
tc_id: TC-API-DASH-ADMIN-SEARCH-014
title: Search admins as an unauthorized user
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
| Authorization | `Bearer <valid_low_privilege_token>` |
| Query Parameters | `key=ali&pagination=on&page=1&limit=10` |

# Preconditions
- The requester holds a valid token for an account that is logged in but lacks the required role/permission to search admins (e.g., a support/customer account, not a privileged admin).

# Steps
1. Send a `GET` request to `https://seyanty.info/api/dashboard/admins-search?key=ali&pagination=on&page=1&limit=10`.
2. Set header `Authorization: Bearer <valid_low_privilege_token>`.
3. Set header `Content-Type: application/json`.
4. Send the request and capture the response.

# Expected Result
- The API returns HTTP status code `403 Forbidden`.
- The request is rejected and no search results are returned.
- Response body indicates the user is not authorized to perform this action.

# Notes
- Exact error message may vary by backend; focus on the HTTP status code.

# Attachments
