---
tc_id: TC-108-OBJ
title: Calculate the deadline from notification rather than first login
priority: High
status: Ready
type: API
linked_requirement: D47, D48, D49
tags:
  - test-case
run_result: Pass
---

# Test Data
| Field        | Value                                                        |
| ------------ | ------------------------------------------------------------ |
| Bearer Token | 49\|GsTJjkhto9bJ0YKu3H5aAbYshyGk01iYTf0fR1f60ba8b7d0         |
| `type`       | `customer`                                                   |
| `reason`     | I object on my first login after receiving the notification. |

# Preconditions
-The notification was dispatched more than three business days ago. The suspended user completes OTP login for the first time today.

# Steps

1. Set the method to `POST` and URL to `{{baseUrl}}/auth/objections`.
2. Set Authorization to: Valid token issued to the account owner.
3. In `Body > form-data`, enable `type` and enter ``customer``.
4. Enable `reason` and enter: I object on my first login after receiving the notification..
5. Record the original notification time (older than three business days) and the first OTP login time (today).
6. Confirm the request is rejected based on notification time rather than first login.
7. Click `Send` and record the HTTP status and full response body.
8. Verify the objection record and action status in an authorized admin view or documented API; compare them with Expected Result.

# Expected Result
- The objection is rejected because the deadline began at notification dispatch, not at first login.

# Notes
PRD D47–D49: one objection per penalty within three business days of notification; suspension remains until review. Postman shows `type` allowed values `user`, `customer`, `provider`, and `reason` length 3–2000. HTTP response schemas and exact codes are not provided in the screenshot; verify against the backend contract.

# Attachments
None before execution. Attach the Postman request/response and supporting admin evidence after testing.

# Script
Manual Postman execution; no automation script attached.

---
*Last Updated: 2026-10-25 09:00*
