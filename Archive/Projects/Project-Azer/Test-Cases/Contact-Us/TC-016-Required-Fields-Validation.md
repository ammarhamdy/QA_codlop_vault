---
tc_id: TC-016
title: Verify Required Fields Validation on Contact Us Form
priority: High
status: Ready
type: Functional
linked_requirement: US-002
tags:
  - test-case
  - contact-us
  - validation
  - negative
run_result: Pass
---

# Test Data
| Field           | Value   |
| --------------- | ------- |
| Name            | (empty) |
| Email Address   | (empty) |
| Phone Number    | (empty) |
| Message Content | (empty) |
| Request Type    | (empty) |

# Preconditions
- User is on the website's 'Contact Us' page.

# Steps
1. Navigate to the 'Contact Us' page.
2. Attempt to click the "Submit" button with all required fields left empty.
3. Verify that validation error messages are displayed for all empty required fields (Name, Email Address, Phone Number, Message Content, Request Type).
4. Fill in all fields except one, and attempt to submit. Repeat for each required field, verifying specific error messages.

# Expected Result
- For each empty required field, an error message (e.g., "Name is required", "Please select a Request Type") should be displayed.
- The form submission should be prevented.
- The user should remain on the 'Contact Us' page.

# Notes
- Ensure error messages are clear and user-friendly.

# Attachments
