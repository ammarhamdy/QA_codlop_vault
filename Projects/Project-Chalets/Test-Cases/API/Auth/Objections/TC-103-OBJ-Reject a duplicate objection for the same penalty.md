---
tc_id: TC-103-OBJ
title: Reject a duplicate objection for the same penalty
priority: High
status: Ready
type: API
linked_requirement: D47, D48, D49
tags:
  - test-case
run_result: Pass
---

# Test Data
| Field        | Value                                                             |
| ------------ | ----------------------------------------------------------------- |
| Bearer Token | 49\|GsTJjkhto9bJ0YKu3H5aAbYshyGk01iYTf0fR1f60ba8b7d0              |
| `type`       | `customer`                                                        |
| `reason`     | تم تعليق حسابي دون سابق إنذار ولم أقم بأي مخالفة لشروط الاستخدام. |

# Preconditions
-A customer has already submitted a successful objection for the exact same penalty.

# Steps

1. Set the method to `POST` and URL to `{{baseUrl}}/auth/objections`.
2. Set Authorization to: Valid token issued to the account owner.
3. In `Body > form-data`, enable `type` and enter ``customer``.
4. Enable `reason` and enter: I would like to object to the same penalty again..
5. Record the existing objection ID and its associated penalty ID.
6. Send the same request again for the same penalty, then verify the objection count and original ID remain unchanged.
7. Click `Send` and record the HTTP status and full response body.
8. Verify the objection record and action status in an authorized admin view or documented API; compare them with Expected Result.

# Expected Result
- The request is rejected and no second objection is created. PRD message: “استخدمت حقك في التظلم من هذه العقوبة”. No new objection record is created.

# Notes
PRD D47–D49: one objection per penalty within three business days of notification; suspension remains until review. Postman shows `type` allowed values `user`, `customer`, `provider`, and `reason` length 3–2000. HTTP response schemas and exact codes are not provided in the screenshot; verify against the backend contract.

# Attachments

# Script


---
*Last Updated: 2026-10-25 09:00*
