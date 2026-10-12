---
tc_id: TC-API-DASH-AUTH-LOGOUT-012
title: Missing Content-Type
priority:
  - Low
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
| Field            | Value                  |
| ---------------- | ---------------------- |
| URL              | /api/dashboard/logout |
| Method           | POST                   |
| Content-Type     | (not set)              |
| Authorization    | Bearer {valid_token}   |

# Preconditions
- An active admin session token is available.

# Steps
1. Send a POST request to `https://seyanty.info/api/dashboard/logout` with `Accept: application/json` only.
2. Set header `Authorization: Bearer {valid_token}`.
3. Submit the request without a `Content-Type` header.
4. Observe the response.

# Expected Result
- The logout succeeds or fails gracefully; no server error occurs.
- If rejected, `status` is `error` with a clear message.

# Notes
- Confirm expected behavior with the API implementation.

# Attachments