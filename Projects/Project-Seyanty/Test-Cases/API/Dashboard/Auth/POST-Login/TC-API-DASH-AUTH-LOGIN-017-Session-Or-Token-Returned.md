---
tc_id: TC-API-DASH-AUTH-LOGIN-017
title: Session Or Token Returned
priority:
  - High
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
| Field         | Value            |
| ------------- | ---------------- |
| email_or_name | admin-1@mail.com |
| password      | Admin#123        |

# Preconditions
- The dashboard login endpoint is reachable.
- The account (admin-1@mail.com) exists and is active.

# Steps
1. Send a POST request to `https://seyanty.info/api/dashboard/login`.
2. Set header `Accept: application/json`.
3. Send valid credentials.
4. Submit the request.
5. Inspect the `data.token` field.

# Expected Result
- A token is returned inside `data.token`.
- The token is a non-empty JWT string with three dot-separated segments.
- The token contains an expiry claim (`exp`) allowing future authenticated requests.

# Notes
- The returned token must be usable in subsequent authenticated API calls.

# Attachments