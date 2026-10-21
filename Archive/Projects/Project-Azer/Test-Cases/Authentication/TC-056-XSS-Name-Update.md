---
tc_id: TC-056
title: Attempt XSS Injection in Name Update Field
priority: High
status: Ready
type: Security
linked_requirement: US-XXX
tags:
  - test-case
  - authentication
  - profile-management
  - name-update
  - security
  - xss
run_result: pass
---

# Test Data
| Field          | Value                                                                 |
| -------------- | --------------------------------------------------------------------- |
| Current Name   | Ammar Hamdy                                                            |
| Payload Name   | <img src=x onerror=alert('XSS')>                                      |

# Preconditions
- User is logged in and on their profile page.

# Steps
1. Navigate to the User Profile section.
2. Enter an XSS payload (e.g., `<img src=x onerror=alert('XSS')>`) into the Full Name field.
3. Click the "Save" or "Update Profile" button.

# Expected Result
- The system should sanitize the input or reject it.
- No alert box appears when the profile is viewed.
- The payload is rendered as plain text or removed.

# Notes
- Verifies protection against XSS in the name field.
