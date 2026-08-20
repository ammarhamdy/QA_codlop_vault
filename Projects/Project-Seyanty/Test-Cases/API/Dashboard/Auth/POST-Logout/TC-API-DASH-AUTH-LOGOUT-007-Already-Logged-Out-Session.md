---
tc_id: TC-API-DASH-AUTH-LOGOUT-007
title: Already Logged Out Session
priority:
  - Medium
status:
  - completed
type:
  - API
linked_requirement: REQ-DASH-AUTH-002
tags:
  - test-case
run_result: pass
---

# Test Data
| Field            | Value                       |
| ---------------- | --------------------------- |
| URL              | /api/dashboard/logout      |
| Method           | POST                        |
| Authorization    | Bearer {revoked_token}      |

# Preconditions
- The token was previously invalidated by a prior logout.

# Steps
1. Send a POST request to `https://seyanty.info/api/dashboard/logout`.
2. Set header `Accept: application/json`.
3. Set header `Authorization: Bearer {revoked_token}`.
4. Submit the request.
5. Observe the response.

# Expected Result
- The request is rejected or returns a logout confirmation without error.
- The token remains invalid.

# Notes
- The system must not reintroduce a revoked session.

# Attachments