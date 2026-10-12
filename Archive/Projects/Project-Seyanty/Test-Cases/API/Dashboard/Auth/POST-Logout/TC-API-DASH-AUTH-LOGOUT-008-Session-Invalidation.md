---
tc_id: TC-API-DASH-AUTH-LOGOUT-008
title: Session Invalidation
priority:
  - High
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
1. Send a POST request to `https://seyanty.info/api/dashboard/logout` with the valid token.
2. Confirm the logout response is successful.
3. Reuse the same token to access a protected dashboard endpoint.
4. Observe the response.

# Expected Result
- The token is invalidated after logout.
- Subsequent protected requests using the token are rejected with `401`.

# Notes
- Applies to AC-05 — Session Termination.

# Attachments
```sh

```