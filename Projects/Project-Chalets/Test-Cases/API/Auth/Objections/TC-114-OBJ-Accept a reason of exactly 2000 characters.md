---
tc_id: TC-114-OBJ
title: Accept a reason of exactly 2000 characters
priority: Medium
status: Ready
type: API
linked_requirement: Objections
tags:
  - test-case
run_result: Pass
---

# Test Data
| Field        | Value                                                                |
| ------------ | -------------------------------------------------------------------- |
| Bearer Token | 49\|GsTJjkhto9bJ0YKu3H5aAbYshyGk01iYTf0fR1f60ba8b7d0                 |
| `type`       | `customer`                                                           |
| `reason`     | Exactly 2000 characters (prepare a valid 2000-character test string) |

# Preconditions
-An eligible customer is within the objection window and has not objected.

# Steps

1. Set the method to `POST` and URL to `{{baseUrl}}/auth/objections`.
2. Set Authorization to: Valid token issued to the account owner.
3. In `Body > form-data`, enable `type` and enter ``customer``.
4. Enable `reason` and enter: Exactly 2000 characters (prepare a valid 2000-character test string).
5. Generate and count a 2000-character reason string before sending.
6. Verify the complete reason is stored without truncation.
7. Click `Send` and record the HTTP status and full response body.
8. Verify the objection record and action status in an authorized admin view or documented API; compare them with Expected Result.

# Expected Result
- The API accepts a valid reason of exactly 2000 characters without undocumented truncation. The request is associated with the correct authenticated account and action.

# Notes
PRD D47–D49: one objection per penalty within three business days of notification; suspension remains until review. Postman shows `type` allowed values `user`, `customer`, `provider`, and `reason` length 3–2000. HTTP response schemas and exact codes are not provided in the screenshot; verify against the backend contract.

# Attachments


# Script


---
*Last Updated: 2026-10-25 09:00*
