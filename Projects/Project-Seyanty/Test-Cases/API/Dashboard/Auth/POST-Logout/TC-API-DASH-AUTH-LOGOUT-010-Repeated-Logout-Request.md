---
tc_id: TC-API-DASH-AUTH-LOGOUT-010
title: Repeated Logout Request
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
| Authorization    | Bearer {valid_token}        |

# Preconditions
- An active admin session token is available.

# Steps
1. Send a POST request to `https://seyanty.info/api/dashboard/logout` with the token.
2. Observe the first response.
3. Send a second logout request with the same token.
4. Observe the second response.

# Expected Result
- The first logout terminates the session.
- The repeated logout request does not break the system and returns an error or a neutral confirmation.

# Notes
- The endpoint must handle duplicate logout calls gracefully.

# Attachments