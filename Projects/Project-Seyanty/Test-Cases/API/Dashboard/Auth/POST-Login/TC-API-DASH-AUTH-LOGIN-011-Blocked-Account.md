---
tc_id: TC-API-DASH-AUTH-LOGIN-011
title: Blocked Account
priority:
  - Medium
status:
  - completed
type:
  - API
linked_requirement: REQ-API-DASH-AUTH-LOGIN
tags:
  - test-case
run_result: pass
---

# Test Data
| Field         | Value             |
| ------------- | ----------------- |
| email_or_name | blocked@mail.com  |
| password      | Admin#123         |

# Preconditions
- The dashboard login endpoint is reachable.
- The account `blocked@mail.com` exists but is blocked.

# Steps
1. Send a POST request to `https://seyanty.info/api/dashboard/login`.
2. Set header `Accept: application/json`.
3. Send credentials of a blocked account.
4. Submit the request.
5. Observe the response.

# Expected Result
- The login attempt is rejected.
- `status` is `error`.
- An error message indicates the account is blocked.

# Notes
- Requires a blocked test account.

# Attachments