---
tc_id: TC-WebsiteUS-004
title: Validate Why Us Feature Title Length
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-016-Website-Management
tags:
  - test-case
run_result: Fail
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-Admin is on the Add Why Us Feature page.
# Steps
1. Enter a title below the minimum allowed length.
2. Verify the validation message.
3. Enter a title exceeding the maximum allowed length.
4. Verify the validation message.
5. Enter a valid title.
# Expected Result
-The appropriate validation message should be displayed when the title is outside the allowed length range. A valid title should be accepted.
# Notes

# Attachments
