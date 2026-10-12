---
tc_id: TC-Contact-US-003
title: Verify Email Address Format Validation on Contact Us Form
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
2. Fill in valid data for Name, Phone Number, Message Content, and Request Type.
3. Enter an invalid email format (e.g., `invalid-email`) in the Email Address field.
4. Click the "Submit" button.
5. Repeat with other invalid email formats (e.g., `test@.com`, `@example.com`).
# Expected Result
- The system should display a clear email format validation error message (e.g., "Please enter a valid email address").
- The form submission should be prevented.
- The user should remain on the 'Contact Us' page
# Notes

# Attachments
