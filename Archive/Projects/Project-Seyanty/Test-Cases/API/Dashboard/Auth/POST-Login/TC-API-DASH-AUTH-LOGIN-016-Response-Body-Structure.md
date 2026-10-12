---
tc_id: TC-API-DASH-AUTH-LOGIN-016
title: Response Body Structure
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
5. Inspect the JSON structure of the response body.

# Expected Result
- On success: `status`, `code`, `message`, and `data` keys are present; `data` contains `id`, `name`, `email`, `phone`, `photo`, `status`, and `token`.
- On failure: `status` is `error`, `code` is `401`, `message` is `البيانات خاطئه`, and `data` is `null`.

# Notes
- Validates the response schema from the documented examples.

# Attachments