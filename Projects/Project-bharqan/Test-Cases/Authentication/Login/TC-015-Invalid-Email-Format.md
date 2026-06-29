---
tc_id: TC-Login--015
title: Verify Login with Invalid Email Format
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: US-001-Bahrqan-Authentication
tags:
  - test-case
---

# Test Data
| Field | Value                     |
| ----- | ------------------------- |
| email | fatma@gmail<br>fatma@.com |
|       |                           |

# Preconditions
-User is on the Login screen.
# Steps
1. Enter invalid email format
2. Click on Send OTP
# Expected Result
A validation message indicating that the email format is invalid
# Notes

# Attachments
