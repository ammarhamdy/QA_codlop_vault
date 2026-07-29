---
tc_id: TC-Contact-US
title: Verify Phone Number Format Validation on Contact Us Form
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-002-Contact-US
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
-User is on the website's 'Contact Us' page.
# Steps
1. Navigate to the 'Contact Us' page.
2. Fill in valid data for Name, Email Address, Message Content, and Request Type.
3. Enter an invalid phone number format (e.g., `123`) in the Phone Number field.
4. Click the "Submit" button.
5. Repeat with other invalid phone number formats (e.g., `abcdefghijk`, `+1 (234)`).
# Expected Result
- The system should display a clear phone number format validation error message (e.g., "Please enter a valid phone number").
- The form submission should be prevented.
- The user should remain on the 'Contact Us' page.
# Notes

# Attachments
