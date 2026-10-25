---
tc_id: TC-124-OBJ
title: Allow a suspended user to object after OTP verification
priority: High
status: Ready
type: API
linked_requirement: D47, D48, D49
tags:
  - test-case
run_result: Pass
---

# Test Data
| Field         | Value                                                                              |
| ------------- | ---------------------------------------------------------------------------------- |
| Authorization | Restricted authentication after OTP for suspended account (confirm implementation) |
| `type`        | `customer`                                                                         |
| `reason`      | I request a review of my suspension after verifying my identity.                   |

# Preconditions
-A suspended customer has completed OTP verification, has the restricted authentication supported by the backend, is within the objection window, and has not objected.

# Steps

1. Set the method to `POST` and URL to `{{baseUrl}}/auth/objections`.
2. Set Authorization to: Restricted authentication after OTP for suspended account (confirm implementation).
3. In `Body > form-data`, enable `type` and enter ``customer``.
4. Enable `reason` and enter: I request a review of my suspension after verifying my identity..
5. Complete OTP as the suspended account and obtain the restricted authentication supported by the backend.
6. Submit the objection; then try a normal protected profile-update operation and confirm the restricted authentication cannot access it.
7. Click `Send` and record the HTTP status and full response body.
8. Verify the objection record and action status in an authorized admin view or documented API; compare them with Expected Result.

# Expected Result
- The user can submit the objection through the permitted restricted flow but cannot access other active-account functionality. The request is associated with the correct authenticated account and action.

# Notes
PRD D47–D49: one objection per penalty within three business days of notification; suspension remains until review. Postman shows `type` allowed values `user`, `customer`, `provider`, and `reason` length 3–2000. HTTP response schemas and exact codes are not provided in the screenshot; verify against the backend contract. **Contract clarification required:** the request body shown does not contain a penalty/action ID, and the exact backend mapping/authentication behavior needs confirmation.

# Attachments
None before execution. Attach the Postman request/response and supporting admin evidence after testing.

# Script
Manual Postman execution; no automation script attached.

---
*Last Updated: 2026-10-25 09:00*
