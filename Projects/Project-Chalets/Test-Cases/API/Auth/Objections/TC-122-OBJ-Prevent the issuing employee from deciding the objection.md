---
tc_id: TC-122-OBJ
title: Prevent the issuing employee from deciding the objection
priority: Medium
status: Ready
type: API
linked_requirement: D47, D48, D49
tags:
  - test-case
run_result: "-"
---

# Test Data
| Field        | Value                                                |
| ------------ | ---------------------------------------------------- |
| Bearer Token | 49\|GsTJjkhto9bJ0YKu3H5aAbYshyGk01iYTf0fR1f60ba8b7d0 |
| `type`       | `customer`                                           |
| `reason`     | I request a review of the penalty decision.          |

# Preconditions
-An objection has been recorded and the identity of the employee who imposed the penalty is known. The administrative review workflow is available for verification.

# Steps

1. In `Body > form-data`, enable `type` and enter ``customer``.
2. Enable `reason` and enter: I request a review of the penalty decision..
3. Identify the staff member who imposed the penalty.
4. In the admin review workflow, try to decide the objection using that same staff account; then verify an authorized independent manager can decide it.
5. Click `Send` and record the HTTP status and full response body.
6. Verify the objection record and action status in an authorized admin view or documented API; compare them with Expected Result.

# Expected Result
- Only the System Manager or General Manager can decide the objection; the employee who imposed the penalty cannot decide it. This is an integration/admin-flow check.

# Notes
PRD D47–D49: one objection per penalty within three business days of notification; suspension remains until review. Postman shows `type` allowed values `user`, `customer`, `provider`, and `reason` length 3–2000. HTTP response schemas and exact codes are not provided in the screenshot; verify against the backend contract. This test covers downstream administrative processing, not only the POST endpoint.

# Attachments


# Script


---
*Last Updated: 2026-10-25 09:00*
