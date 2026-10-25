---
tc_id: TC-105-OBJ
title: Reject an objection after the three-business-day deadline
priority: High
status: Ready
type: API
linked_requirement: Objections
tags:
  - test-case
run_result: Need Check
---

# Test Data
| Field        | Value                                                |
| ------------ | ---------------------------------------------------- |
| Bearer Token | 49\|GsTJjkhto9bJ0YKu3H5aAbYshyGk01iYTf0fR1f60ba8b7d0 |
| `type`       | `customer`                                           |
| `reason`     | أتقدم باعتراض لايقاف حسابي                           |

# Preconditions
-The customer was notified of the penalty more than three business days ago. No objection was submitted before the deadline.

# Steps

1. Set the method to `POST` and URL to `{{baseUrl}}/auth/objections`.
2. Set Authorization to: Valid token issued to the account owner.
3. In `Body > form-data`, enable `type` and enter ``customer``.
4. Enable `reason` and enter: I request a review after the objection deadline..
5. Record the server-side notification timestamp and verify more than three business days have elapsed.
6. Confirm the request does not create an objection and returns the expired-window business error.
7. Click `Send` and record the HTTP status and full response body.
8. Verify the objection record and action status in an authorized admin view or documented API; compare them with Expected Result.

# Expected Result
- The objection is rejected without creating a record. PRD message: “انتهت مهلة التظلم من هذه العقوبة”. No new objection record is created.

# Notes
PRD D47–D49: one objection per penalty within three business days of notification; suspension remains until review. Postman shows `type` allowed values `user`, `customer`, `provider`, and `reason` length 3–2000. HTTP response schemas and exact codes are not provided in the screenshot; verify against the backend contract.

# Attachments


# Script


---
*Last Updated: 2026-10-25 09:00*
