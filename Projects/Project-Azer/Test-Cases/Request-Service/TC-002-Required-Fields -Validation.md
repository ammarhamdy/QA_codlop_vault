---
tc_id: TC-002
title: Verify Required Fields Validation on Service Request
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: US-005
tags:
  - test-case
---

# Test Data
| Field           | Value   |
| --------------- | ------- |
| Name            | (Empty) |
| Phone           | (Empty) |
| Email           | (Empty) |
| Service Type    | (Empty) |
| Target Audience | (Empty) |
| Request Details | (Empty) |

# Preconditions
User on Service Request page
# Steps
1. Navigate to the 'Service Request' page.
2. Attempt to click the "Send" button with all required fields left empty.
3. Verify that validation error messages are displayed for all empty required fields ( Name,  
Phone, Email ,  .......).
4. Fill in all fields except one, and attempt to submit. Repeat for each required field, verifying specific error messages.
# Expected Result
  -For each empty required field, an error message (e.g., "Entity  Name is required", "Please Enter Email") should be displayed.
- The form submission should be prevented.
- The user should remain on the 'Register Your Interest' page.
# Notes

# Attachments
