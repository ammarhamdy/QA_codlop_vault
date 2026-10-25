---
tc_id: TC-101-OBJ
title: Submit an objection to a warning
priority: Medium
status: Ready
type: API
linked_requirement: D47, D48, D49
tags:
  - test-case
run_result: "-"
---

# Test Data
| Field        | Value                                                              |
| ------------ | ------------------------------------------------------------------ |
| Bearer Token | -                                                                  |
| `type`       | `customer`                                                         |
| `reason`     | I object to the warning and request that the incident be reviewed. |

# Preconditions
A customer has an active warning recorded in the penalty log. Notice was sent within three business days. No objection exists for this warning.

# Steps

1. Set the method to `POST` and URL to `{{baseUrl}}/auth/objections`.
2. Set Authorization to: Valid token issued to the account owner.
3. In `Body > form-data`, enable `type` and enter ``customer``.
4. Enable `reason` and enter: I object to the warning and request that the incident be reviewed..
5. Confirm a warning penalty (not a suspension) exists in the customer penalty log.
6. Verify the warning remains in force while the objection is pending.
7. Click `Send` and record the HTTP status and full response body.
8. Verify the objection record and action status in an authorized admin view or documented API; compare them with Expected Result.

# Expected Result
One objection is accepted for the warning. The warning remains in force until the reviewer decides. The request is associated with the correct authenticated account and action.

# Notes
PRD D47–D49: one objection per penalty within three business days of notification; suspension remains until review. Postman shows `type` allowed values `user`, `customer`, `provider`, and `reason` length 3–2000. HTTP response schemas and exact codes are not provided in the screenshot; verify against the backend contract.

# Attachments
None before execution. Attach the Postman request/response and supporting admin evidence after testing.

# Script
Manual Postman execution; no automation script attached.

---
*Last Updated: 2026-10-25 09:00*
