---
tc_id: TC-004
title: Verify Email Address Format Validation on Register Your Interst
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: US-003
tags:
  - test-case
---

# Test Data
| Field         | Value         |
| ------------- | ------------- |
| Email Address | invalid-email |
| Email Address | misr@.com     |
| Email Address | @gmail.com    |

# Preconditions
User is on  Register Your Interest page.
# Steps
1. Navigate to the 'Register Your Interest' page.
2. Fill in valid data for Name, Phone Number, Message Content, and Entity, Partnership Type.
3. Enter an invalid email format (e.g., `invalid-email`) in the Email Address field.
4. Click the "Send" button.
5. Repeat with other invalid email formats (e.g., `test@.com`, `@example.com`).

# Expected Result
- The system should display a clear email format validation error message (e.g., "Please enter a valid email address").
- The form submission should be prevented.
- The user should remain on the 'Register Your Interest' page.
# Notes

# Attachments
