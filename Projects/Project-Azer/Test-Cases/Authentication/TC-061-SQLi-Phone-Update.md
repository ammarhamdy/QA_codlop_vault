---
tc_id: TC-061
title: Attempt SQL Injection in Phone Update Field
priority: High
status: Ready
type: Security
linked_requirement: US-XXX
tags:
  - test-case
  - authentication
  - profile-management
  - phone-update
  - security
  - sqli
---

# Test Data
| Field          | Value                                                                 |
| -------------- | --------------------------------------------------------------------- |
| Current Phone   | +966500000001                                                          |
| Payload Phone   | 500000000' OR '1'='1                                                   |

# Preconditions
- User is logged in and on their profile page.

# Steps
1. Navigate to the User Profile section.
2. Enter a SQL injection payload (e.g., `500000000' OR '1'='1`) into the Phone Number field.
3. Click the "Save" or "Update Profile" button.

# Expected Result
- The system should reject the input as an invalid phone number format.
- No database errors occur.
- The profile update fails.

# Notes
- Verifies protection against SQLi in the phone number field.
