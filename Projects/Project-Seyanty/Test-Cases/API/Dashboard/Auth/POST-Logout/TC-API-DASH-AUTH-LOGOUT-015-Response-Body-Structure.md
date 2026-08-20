---
tc_id: TC-API-DASH-AUTH-LOGOUT-015
title: Response Body Structure
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
5. Inspect the JSON structure of the response body.

# Expected Result
- The response contains `status`, `code`, `message`, and `data` keys.
- On success `status` is `success`; on failure `status` is `error` and `data` is `null`.

# Notes
- Validate the schema against the API documentation.

# Attachments