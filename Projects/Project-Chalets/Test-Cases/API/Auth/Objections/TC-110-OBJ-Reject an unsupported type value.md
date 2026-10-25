---
tc_id: TC-113-OBJ
title: Reject an unsupported type value
priority: High
status: Ready
type: API
linked_requirement: D47, D48, D49
tags:
  - test-case
run_result: Pass
---

# Test Data
| Field        | Value                                                |
| ------------ | ---------------------------------------------------- |
| Bearer Token | 49\|GsTJjkhto9bJ0YKu3H5aAbYshyGk01iYTf0fR1f60ba8b7d0 |
| `type`       | `admin`                                              |
| `reason`     | I request a review of the suspension decision.       |

# Preconditions
-An eligible customer is within the objection window and has valid authentication.

# Steps
1. Set the method to `POST` and URL to `{{baseUrl}}/auth/objections`.
2. Set Authorization to: Valid token issued to the account owner.
3. In `Body > form-data`, enable `type` and enter ``admin``.
4. Enable `reason` and enter: I request a review of the suspension decision..
5. Check the value `admin` is sent exactly, without automatic replacement.
6. Verify validation rejects the unsupported enum and no objection was stored.
7. Click `Send` and record the HTTP status and full response body.
8. Verify the objection record and action status in an authorized admin view or documented API; compare them with Expected Result.

# Expected Result
- The API rejects admin because the documented allowed values are user, customer, and provider. No objection is created. No new objection record is created.

# Notes
PRD D47–D49: one objection per penalty within three business days of notification; suspension remains until review. Postman shows `type` allowed values `user`, `customer`, `provider`, and `reason` length 3–2000. HTTP response schemas and exact codes are not provided in the screenshot; verify against the backend contract.

# Attachments


# Script
Manual Postman execution; no automation script attached.

---
*Last Updated: 2026-10-25 09:00*
