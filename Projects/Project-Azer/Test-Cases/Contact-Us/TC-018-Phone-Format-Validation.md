---
tc_id: TC-018
title: Verify Phone Number Format Validation on Contact Us Form
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
| Field        | Invalid Value |
| ------------ | ------------- |
| Phone Number | 123           |
| Phone Number | abcdefghijk   |
| Phone Number | +1 (234)      |

# Preconditions
- User is on the website's 'Contact Us' page.

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
- Test various invalid phone number patterns including too short/long, non-numeric characters.

# Attachments
