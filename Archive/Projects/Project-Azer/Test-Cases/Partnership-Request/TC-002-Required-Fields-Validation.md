---
tc_id: TC-002
title: Verify Required Fields Validation on Partnership Request
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-004
tags:
  - test-case
run_result: Pass
---

# Test Data
| Field               | Value   |
| ------------------- | ------- |
| Entity Name         | (empty) |
| Responsible Name    | (empty) |
| Email               | (empty) |
| Confirm Email       | (empty) |
| Phone               | (empty) |
| Job Title           | (empty) |
| Entity Type         | (empty) |
| Partnership Type    | (empty) |
| About the Entity    | (empty) |
| Partnership details | (empty) |


# Preconditions
User on Partnership Request page
# Steps
1. Navigate to the 'Partnership Request' page.
2. Attempt to click the "Send" button with all required fields left empty.
3. Verify that validation error messages are displayed for all empty required fields (Entity Name,  
Responsible Name, Email , Phone Number, .......).
4. Fill in all fields except one, and attempt to submit. Repeat for each required field, verifying specific error messages.
# Expected Result
 For each empty required field, an error message (e.g., "Entity  Name is required", "Please Enter Email") should be displayed.
- The form submission should be prevented.
- The user should remain on the 'Register Your Interest' page.
# Notes

# Attachments
