---
tc_id: TC-API-DASH-AUTH-LOGOUT-014
title: Response Status Code
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
| Field            | Value                   |
| ---------------- | ----------------------- |
| URL              | /api/dashboard/logout  |
| Method           | POST                    |
| Authorization    | Bearer {valid_token}    |

# Preconditions
- An active admin session token is available.

# Steps
1. Send a POST request to `https://seyanty.info/api/dashboard/logout`.
2. Set header `Accept: application/json`.
3. Set header `Authorization: Bearer {valid_token}`.
4. Submit the request.
5. Inspect the HTTP status code.

# Expected Result
- Successful logout returns HTTP status code `200`.
- Unauthenticated or invalid token returns HTTP status code `401`.

# Notes
- Status codes must match the documented API behavior.

# Attachments