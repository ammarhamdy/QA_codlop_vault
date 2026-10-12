---
tc_id: TC-API-DASH-AUTH-LOGIN-015
title: Response Status Code
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
3. Send valid `email_or_name` and `password`.
4. Submit the request.
5. Inspect the HTTP status code of the response.

# Expected Result
- Valid credentials return HTTP status code `200`.
- Invalid credentials return HTTP status code `401`.

# Notes
- Status codes must match the documented VALID and INVALID responses.

# Attachments