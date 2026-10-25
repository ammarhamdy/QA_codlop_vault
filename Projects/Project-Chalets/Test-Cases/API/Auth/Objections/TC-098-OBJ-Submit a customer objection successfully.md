---
tc_id: TC-098-OBJ
title: Submit a customer objection successfully
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
-A customer account is suspended. The suspension notification was sent less than three business days ago. No objection exists for this suspension.

# Steps
1. Set the method to `POST` and URL to `{{baseUrl}}/auth/objections`.
2. Set Authorization to: Valid token issued to the account owner.
3. In `Body > form-data`, enable `type` and enter ``customer``.
4. Enable `reason` and enter: I request a review of the reason for suspending my account..
5. Check the customer profile is suspended before sending.
6. After submission, verify the objection is linked to the customer suspension, and suspension remains active.
7. Click `Send` and record the HTTP status and full response body.
8. Verify the objection record and action status in an authorized admin view or documented API; compare them with Expected Result.

# Expected Result

- The objection is accepted and recorded once against the correct customer suspension. The suspension remains active pending review. The request is associated with the correct authenticated account and action.

# Notes
PRD D47–D49: one objection per penalty within three business days of notification; suspension remains until review. Postman shows `type` allowed values `user`, `customer`, `provider`, and `reason` length 3–2000. HTTP response schemas and exact codes are not provided in the screenshot; verify against the backend contract.

# Attachments


# Script


---
*Last Updated: 2026-10-25 09:00*
