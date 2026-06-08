---
tc_id: TC-019
title: Verify maximum input length validation for Product fields
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-006
tags:
  - test-case
run_result: Fail
---

# Test Data
| Field                           | Value                            |
| ------------------------------- | -------------------------------- |
| Administrator Credentials       | Email/Pass                       |
| Title,Brief summary,Description | m/mnmbnbbnbn.................... |

# Preconditions
An administrator is logged into the admin panel 

# Expected Result
 Each text field accepts input according to its defined character limit and displays the appropriate validation behavior when the limit is exceeded.
# Notes

# Attachments
