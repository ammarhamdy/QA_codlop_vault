---
tc_id: TC-104-OBJ
title: Allow an objection for a different penalty
priority: Medium
status: Ready
type: API
linked_requirement: Objections
tags:
  - test-case
---

# Test Data
| Field        | Value                                                |
| ------------ | ---------------------------------------------------- |
| Bearer Token | 49\|GsTJjkhto9bJ0YKu3H5aAbYshyGk01iYTf0fR1f60ba8b7d0 |
| `type`       | `customer`                                           |
| `reason`     | I object to the second, separate penalty.            |

# Preconditions
-A customer has two distinct penalties. An objection exists for the first penalty, but none for the second. The second notification is within the deadline.

# Steps
1. Set the method to `POST` and URL to `{{baseUrl}}/auth/objections`.
2. Set Authorization to: Valid token issued to the account owner.
3. In `Body > form-data`, enable `type` and enter ``customer``.
4. Enable `reason` and enter: I object to the second, separate penalty..
5. Record penalty A with an existing objection and penalty B with none.
6. Submit for the new eligible penalty B and confirm no duplicate check incorrectly blocks it; confirm backend targeting rules.
7. Click `Send` and record the HTTP status and full response body.
8. Verify the objection record and action status in an authorized admin view or documented API; compare them with Expected Result.

# Expected Result
- The objection for the second penalty is accepted and is not treated as a duplicate of the first. The request is associated with the correct authenticated account and action.

# Notes
-PRD D47–D49: one objection per penalty within three business days of notification; suspension remains until review. Postman shows `type` allowed values `user`, `customer`, `provider`, and `reason` length 3–2000. HTTP response schemas and exact codes are not provided in the screenshot; verify against the backend contract. **Contract clarification required:** the request body shown does not contain a penalty/action ID, and the exact backend mapping/authentication behavior needs confirmation.

# Attachments


# Script


---
*Last Updated: 2026-10-25 09:00*
