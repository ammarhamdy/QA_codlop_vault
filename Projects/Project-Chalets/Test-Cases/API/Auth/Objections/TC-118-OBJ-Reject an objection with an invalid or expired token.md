---
tc_id: TC-118-OBJ
title: Reject an objection with an invalid or expired token
priority: High
status: Ready
type: API
linked_requirement: D47, D48, D49
tags:
  - test-case
run_result: Pass
---

# Test Data
| Field         | Value                                          |
| ------------- | ---------------------------------------------- |
| Authorization | Invalid or expired bearer token                |
| `type`        | `customer`                                     |
| `reason`      | I request a review of the suspension decision. |

# Preconditions
-An eligible customer exists within the deadline. Use an invalid or expired token.

# Steps

1. Set the method to `POST` and URL to `{{baseUrl}}/auth/objections`.
2. Use an invalid or expired bearer token.
3. In `Body > form-data`, enable `type` and enter ``customer``.
4. Enable `reason` and enter: I request a review of the suspension decision..
5. Confirm the bearer token is expired or deliberately invalid.
6. Verify the request is rejected and no objection is created.
7. Click `Send` and record the HTTP status and full response body.
8. Verify the objection record and action status in an authorized admin view or documented API; compare them with Expected Result.

# Expected Result
- The API denies the request and creates no objection. No new objection record is created.

# Notes
PRD D47–D49: one objection per penalty within three business days of notification; suspension remains until review. Postman shows `type` allowed values `user`, `customer`, `provider`, and `reason` length 3–2000. HTTP response schemas and exact codes are not provided in the screenshot; verify against the backend contract.

# Attachments


# Script


---
*Last Updated: 2026-10-25 09:00*
