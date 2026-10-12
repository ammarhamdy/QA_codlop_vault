---
tc_id: TC-Profile-005
title: " Verify Phone Number Validation"
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
1. Enter invalid values such as **letters**, **special characters**, **12345**, or a phone number with an invalid length.  
2. Enter a valid phone number using numeric characters only.  
3. Click **Save** after each attempt.
# Expected Result
-The phone number field accepts only valid numeric phone numbers and displays validation messages for invalid input according to the defined validation rules.
# Notes

# Attachments
