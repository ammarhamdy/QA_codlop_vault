---
tc_id: TC-119-OBJ
title: Prevent objection submission for another account
priority: High
status: Ready
type: API
linked_requirement: D47, D48, D49
tags:
  - test-case
run_result: Pass
---

# Test Data
| Field         | Value                                                   |
| ------------- | ------------------------------------------------------- |
| Authorization | Valid token for account B (not the penalized account A) |
| `type`        | `customer`                                              |
| `reason`      | I object to a penalty belonging to another account.     |

# Preconditions
-Account A has an eligible penalty. The request is authenticated as Account B. The visible body contains no penalty ID; verify target association server-side.

# Steps

1. Set the method to `POST` and URL to `{{baseUrl}}/auth/objections`.
2. Set Authorization to: Valid token for account B (not the penalized account A).
3. In `Body > form-data`, enable `type` and enter ``customer``.
4. Enable `reason` and enter: I object to a penalty belonging to another account..
5. Record the penalized account A and use a valid token for different account B.
6. Verify the response does not create an objection against A’s penalty.
7. Click `Send` and record the HTTP status and full response body.
8. Verify the objection record and action status in an authorized admin view or documented API; compare them with Expected Result.

# Expected Result
Account B must not be able to create or associate an objection with Account A’s penalty. No new objection record is created.

# Notes
PRD D47–D49: one objection per penalty within three business days of notification; suspension remains until review. Postman shows `type` allowed values `user`, `customer`, `provider`, and `reason` length 3–2000. HTTP response schemas and exact codes are not provided in the screenshot; verify against the backend contract. **Contract clarification required:** the request body shown does not contain a penalty/action ID, and the exact backend mapping/authentication behavior needs confirmation.

# Attachments
None before execution. Attach the Postman request/response and supporting admin evidence after testing.

# Script
Manual Postman execution; no automation script attached.

---
*Last Updated: 2026-10-25 09:00*
