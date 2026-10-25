---
tc_id: TC-107-OBJ
title: Reject an objection immediately after the deadline
priority: High
status: Ready
type: API
linked_requirement: D47, D48, D49
tags:
  - test-case
run_result: Need Check
---

# Test Data
| Field        | Value                                                |
| ------------ | ---------------------------------------------------- |
| Bearer Token | 49\|GsTJjkhto9bJ0YKu3H5aAbYshyGk01iYTf0fR1f60ba8b7d0 |
| `type`       | `customer`                                           |
| `reason`     | I am submitting my objection after the deadline.     |

# Preconditions
-The customer has not objected. The server time is immediately after the three-business-day window expires.

# Steps

1. Set the method to `POST` and URL to `{{baseUrl}}/auth/objections`.
2. Set Authorization to: Valid token issued to the account owner.
3. In `Body > form-data`, enable `type` and enter ``customer``.
4. Enable `reason` and enter: I am submitting my objection after the deadline..
5. Arrange the server clock to be immediately after the exact deadline.
6. Confirm no objection is created.
7. Click `Send` and record the HTTP status and full response body.
8. Verify the objection record and action status in an authorized admin view or documented API; compare them with Expected Result.

# Expected Result
-The objection is rejected and no record is created. No new objection record is created.

# Notes
PRD D47–D49: one objection per penalty within three business days of notification; suspension remains until review. Postman shows `type` allowed values `user`, `customer`, `provider`, and `reason` length 3–2000. HTTP response schemas and exact codes are not provided in the screenshot; verify against the backend contract.

# Attachments
None before execution. Attach the Postman request/response and supporting admin evidence after testing.

# Script
Manual Postman execution; no automation script attached.

---
*Last Updated: 2026-10-25 09:00*
