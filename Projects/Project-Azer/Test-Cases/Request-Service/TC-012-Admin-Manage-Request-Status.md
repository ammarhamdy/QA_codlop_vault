---
tc_id: TC-012
title: Verify that the admin can manage request status
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-005
tags:
  - test-case
run_result: Fail
---

# Test Data
| Field                     | Value                      |
| ------------------------- | -------------------------- |
| Administrator Credentials | Email/Pass                 |
| Initial Request Status    | New"Pending"               |
| Target Statuses           | Accepted ,Refused, Pending |

# Preconditions
An administrator is logged into the admin panel and is viewing partnership request
# Steps
1. Log in to the administrator panel and navigate to Service request.
2. Verify the initial status of the request (e.g., 'New').
3. Locate the option to change the request status.
4. Verify that status can be changed .
# Expected Result
- The admin should be able to update the request status successfully.
- The status change should be reflected and saved successfully.
# Notes

# Attachments
