---
tc_id: TC-102-OBJ
title: |-
  
  Object to a direct administrative suspension
priority: Medium
status: Ready
type: API
linked_requirement: Objections
tags:
  - test-case
run_result: Pass
---

# Test Data
| Field        | Value                                                |
| ------------ | ---------------------------------------------------- |
| Bearer Token | 49\|GsTJjkhto9bJ0YKu3H5aAbYshyGk01iYTf0fR1f60ba8b7d0 |
| `type`       | `customer`                                           |
| `reason`     | اتقدم بطلب اعتراض علي تعطيل الاداره لحسابي.          |

# Preconditions
-A customer was suspended directly by an administrator, not as part of a dispute. Notice was sent within the allowed window; no prior objection exists.

# Steps

1. Set the method to `POST` and URL to `{{baseUrl}}/auth/objections`.
2. Set Authorization to: Valid token issued to the account owner.
3. In `Body > form-data`, enable `type` and enter ``customer``.
4. Enable `reason` and enter: I request a review of this administrative suspension..
5. Confirm the suspension was imposed directly by administration, not via a dispute.
6. Verify the objection is accepted for this administrative action.
7. Click `Send` and record the HTTP status and full response body.
8. Verify the objection record and action status in an authorized admin view or documented API; compare them with Expected Result.

# Expected Result
- The objection is accepted even without a related dispute. Suspension remains active until a decision. The request is associated with the correct authenticated account and action.

# Notes
- PRD D47–D49: one objection per penalty within three business days of notification; suspension remains until review. Postman shows `type` allowed values `user`, `customer`, `provider`, and `reason` length 3–2000. HTTP response schemas and exact codes are not provided in the screenshot; verify against the backend contract.

# Attachments


# Script


---
*Last Updated: 2026-10-25 09:00*
