---
tc_id: TC-017
title: Verify Email Address Format Validation on Contact Us Form
priority: High
status: Draft
type: Functional
linked_requirement: US-002
tags:
  - test-case
  - contact-us
  - validation
  - negative
---

# Test Data
| Field         | Invalid Value |
| ------------- | ------------- |
| Email Address | invalid-email |
| Email Address | test@.com    |
| Email Address | @example.com  |

# Preconditions
- User is on the website's 'Contact Us' page.

# Steps
1. Navigate to the 'Contact Us' page.
2. Fill in valid data for Name, Phone Number, Message Content, and Request Type.
3. Enter an invalid email format (e.g., `invalid-email`) in the Email Address field.
4. Click the "Submit" button.
5. Repeat with other invalid email formats (e.g., `test@.com`, `@example.com`).

# Expected Result
- The system should display a clear email format validation error message (e.g., "Please enter a valid email address").
- The form submission should be prevented.
- The user should remain on the 'Contact Us' page.

# Notes
- Test various invalid email patterns including missing @, missing domain, invalid characters.

# Attachments
