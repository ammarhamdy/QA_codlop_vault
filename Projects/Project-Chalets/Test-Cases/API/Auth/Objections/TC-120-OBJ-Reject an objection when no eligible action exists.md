---
tc_id: TC-120-OBJ
title: Reject an objection when no eligible action exists
priority: High
status: Ready
type: API
linked_requirement: D47, D48, D49
tags:
  - test-case
run_result: Pass
---

# Test Data
| Field        | Value                                                   |
| ------------ | ------------------------------------------------------- |
| Bearer Token | 54\|Z8YWAhv0lACYLrEaaIwIhrPyiinIyv0mFQzUD8QPb6ac224a    |
| `type`       | `customer`                                              |
| `reason`     | I request a review of a suspension that does not exist. |

# Preconditions
-The authenticated customer is active and has no warning, suspension, or other eligible action to object to.

# Steps
1. Prepare the account and action described in Preconditions; confirm the action owner, notification timestamp and previous objection count.
2. In Postman, open `Tanfeez > auth > objections > Submit User Objection` and select the correct environment.
3. Set the method to `POST` and URL to `{{baseUrl}}/auth/objections`.
4. Set Authorization to: Valid token issued to the account owner.
5. In `Body > form-data`, enable `type` and enter ``customer``.
6. Enable `reason` and enter: I request a review of a suspension that does not exist..
7. Confirm the authenticated account has no eligible penalty or suspension.
8. Verify the backend does not create an unlinked objection.
9. Click `Send` and record the HTTP status and full response body.
10. Verify the objection record and action status in an authorized admin view or documented API; compare them with Expected Result.

# Expected Result
The API does not create an objection without an eligible target action. No new objection record is created.

# Notes
PRD D47–D49: one objection per penalty within three business days of notification; suspension remains until review. Postman shows `type` allowed values `user`, `customer`, `provider`, and `reason` length 3–2000. HTTP response schemas and exact codes are not provided in the screenshot; verify against the backend contract.

# Attachments
None before execution. Attach the Postman request/response and supporting admin evidence after testing.

# Script
Manual Postman execution; no automation script attached.

---
*Last Updated: 2026-10-25 09:00*
