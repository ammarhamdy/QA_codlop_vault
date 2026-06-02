---
tc_id: TC-003
title: Verify Email Address Format Validation on Partnership Request
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: US-004
tags:
  - test-case
---

# Test Data
| Field         | Value      |
| ------------- | ---------- |
| Email Address | @gmail.com |
| Email Address | fatma@.com |
| Email Address | @gmail.com |

# Preconditions
User is on  Partnership Request page.
# Steps
1. Navigate to the 'Partnership Request' page.
2. Fill in valid data for Entity Name, Phone Number, Responsible Name, ....... 
3. Enter an invalid email format (e.g., `invalid-email`) in the Email Address field.
4. Click the "Send" button.
5. Repeat with other invalid email formats (e.g., fatma@.com`, `@gmail.com`).

# Expected Result
- The system should display a clear email format validation error message (e.g., "Please enter a valid email address").
- The form submission should be prevented.
- The user should remain on the 'partnership Request' page.
# Notes

# Attachments
