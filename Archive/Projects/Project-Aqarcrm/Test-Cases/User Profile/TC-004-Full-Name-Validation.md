---
tc_id: TC-Profile-004
title: Verify Full Name validation
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-005-User-Profile
tags:
  - test-case
run_result: Pass
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-User is on my Profile page.
# Steps
1. Enter invalid values such as **12345**, **@#$%**, or spaces only in the **Full Name** field.  
2. Enter a name within the allowed length.  
3. Enter a name exceeding the maximum allowed length.  
4. Click **Save** after each attempt.
# Expected Result
-The Full Name field accepts valid input within the allowed length and displays validation messages for invalid or overlength values.
# Notes

# Attachments
