---
tc_id: TC-003
title: Verify Required Fields Validation on Register Your Interest  Form
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-003
tags:
  - test-case
run_result: pass
---

# Test Data
| Field            | Value   |
| ---------------- | ------- |
| Name             | (empty) |
| Email Address    | (empty) |
| Phone Number     | (empty) |
| Message Content  | (empty) |
| Entity type      | (empty) |
| Partnership type | (empty) |

# Preconditions
User on Register your interest page
# Steps
1. Navigate to the 'Register Your Interest' page.
2. Attempt to click the "Send" button with all required fields left empty.
3. Verify that validation error messages are displayed for all empty required fields (Name, Email , Phone Number, Message Content, Entity Type, Partnership type).
4. Fill in all fields except one, and attempt to submit. Repeat for each required field, verifying specific error messages.

# Expected Result
- For each empty required field, an error message (e.g., "Name is required", "Please select Entity Type") should be displayed.
- The form submission should be prevented.
- The user should remain on the 'Register Your Interest' page.
# Notes

# Attachments
