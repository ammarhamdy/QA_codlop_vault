---
tc_id: TC-121-OBJ
title: Keep the suspension active after objection submission
priority: High
status: Ready
type: API
linked_requirement: D47, D48, D49
tags:
  - test-case
run_result: Pass
---

# Test Data
| Field        | Value                                                |
| ------------ | ---------------------------------------------------- |
| Bearer Token | 49\|GsTJjkhto9bJ0YKu3H5aAbYshyGk01iYTf0fR1f60ba8b7d0 |
| `type`       | `customer`                                           |
| `reason`     | I request a review of my account suspension.         |

# Preconditions
-An eligible suspended customer is within the objection window and has never objected to the action.

# Steps

1. Set the method to `POST` and URL to `{{baseUrl}}/auth/objections`.
2. Set Authorization to: Valid token issued to the account owner.
3. In `Body > form-data`, enable `type` and enter ``customer``.
4. Enable `reason` and enter: I request a review of my account suspension..
5. Record the suspended status before submission.
6. After successful submission, retrieve the status again and confirm it is still suspended.
7. Click `Send` and record the HTTP status and full response body.
8. Verify the objection record and action status in an authorized admin view or documented API; compare them with Expected Result.

# Expected Result
- After submission succeeds, the account remains suspended and cannot access prohibited application features until a review decision. The request is associated with the correct authenticated account and action.

# Notes
PRD D47–D49: one objection per penalty within three business days of notification; suspension remains until review. Postman shows `type` allowed values `user`, `customer`, `provider`, and `reason` length 3–2000. HTTP response schemas and exact codes are not provided in the screenshot; verify against the backend contract.

# Attachments

# Script
Manual Postman execution; no automation script attached.

---
*Last Updated: 2026-10-25 09:00*
