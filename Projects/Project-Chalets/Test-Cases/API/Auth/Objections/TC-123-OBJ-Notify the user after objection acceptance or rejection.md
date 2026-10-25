---
tc_id: TC-123-OBJ
title: Notify the user after objection acceptance or rejection
priority: Medium
status: Ready
type: API
linked_requirement: D47, D48, D49
tags:
  - test-case
run_result: "-"
---

# Test Data
| Field         | Value                                       |
| ------------- | ------------------------------------------- |
| Authorization | Valid token issued to the account owner     |
| `type`        | `provider`                                  |
| `reason`      | I request a review of the penalty decision. |

# Preconditions
An objection is recorded. An authorized manager can accept it in one test and reject it in another. Use separate test records.

# Steps

1. Set the method to `POST` and URL to `{{baseUrl}}/auth/objections`.
2. Set Authorization to: Valid token issued to the account owner.
3. In `Body > form-data`, enable `type` and enter ``provider``.
4. Enable `reason` and enter: I request a review of the penalty decision..
5. Using a fresh objection, have an authorized reviewer accept it and verify the user notification.
6. Using a separate fresh objection, have an authorized reviewer reject it and verify the user notification and unchanged penalty.
7. Click `Send` and record the HTTP status and full response body.
8. Verify the objection record and action status in an authorized admin view or documented API; compare them with Expected Result.

# Expected Result
-Acceptance lifts the action and notifies the user; rejection leaves it active and notifies the user. A successful POST alone is not a review decision.

# Notes
PRD D47–D49: one objection per penalty within three business days of notification; suspension remains until review. Postman shows `type` allowed values `user`, `customer`, `provider`, and `reason` length 3–2000. HTTP response schemas and exact codes are not provided in the screenshot; verify against the backend contract. This test covers downstream administrative processing, not only the POST endpoint.

# Attachments
None before execution. Attach the Postman request/response and supporting admin evidence after testing.

# Script
Manual Postman execution; no automation script attached.

---
*Last Updated: 2026-10-25 09:00*
