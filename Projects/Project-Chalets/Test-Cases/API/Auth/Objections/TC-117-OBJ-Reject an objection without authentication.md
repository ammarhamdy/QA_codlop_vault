---
tc_id: TC-117-OBJ
title: Reject an objection without authentication
priority: High
status: Ready
type: API
linked_requirement: D47, D48, D49
tags:
  - test-case
run_result: Pass
---

# Test Data
| Field         | Value                                          |
| ------------- | ---------------------------------------------- |
| Authorization | No Authorization header                        |
| `type`        | `customer`                                     |
| `reason`      | I request a review of the suspension decision. |

# Preconditions
-An eligible customer exists and is within the deadline. Remove the Authorization header.

# Steps

1. Set the method to `POST` and URL to `{{baseUrl}}/auth/objections`.
2. Remove the Authorization header completely.
3. In `Body > form-data`, enable `type` and enter ``customer``.
4. Enable `reason` and enter: I request a review of the suspension decision..
5. Inspect the Postman Headers tab and confirm no Authorization header is inherited.
6. Verify the request is unauthenticated and creates no objection.
7. Click `Send` and record the HTTP status and full response body.
8. Verify the objection record and action status in an authorized admin view or documented API; compare them with Expected Result.

# Expected Result
- The API denies unauthenticated submission and creates no objection. Confirm exact HTTP status with the API contract. No new objection record is created.

# Notes
PRD D47–D49: one objection per penalty within three business days of notification; suspension remains until review. Postman shows `type` allowed values `user`, `customer`, `provider`, and `reason` length 3–2000. HTTP response schemas and exact codes are not provided in the screenshot; verify against the backend contract.

# Attachments


# Script
Manual Postman execution; no automation script attached.

---
*Last Updated: 2026-10-25 09:00*
