---
tc_id: TC-Sup-008
title: Verify adding a supervisor with an existing phone number
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: US-013-Admins-Management
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-A supervisor with the same phone number already exists.
# Steps  
1. Enter a phone number that already exists in the system.  
2. Fill other fields with valid data.
3. Click **Save**
# Expected Result
-The system prevents adding the supervisor, displays an appropriate validation message indicating that the phone number already exists, and the supervisor is not created.
# Notes

# Attachments
