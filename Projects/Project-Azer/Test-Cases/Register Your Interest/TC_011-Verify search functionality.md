---
tc_id: TC-011
title:
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
| Field  | Value                |
| ------ | -------------------- |
| Search | valid email,name,... |
| Search | invalid email,name   |

# Preconditions
-An administrator account is available and logged into the admin panel.

# Steps
1. Log in to the administrator panel with valid credentials.
2. Navigate to the 'Interest Requests' .
3. Verify that the previously submitted client request(s) are listed.
4. Enter a valid keyword that exists in request listed & Perform the search
5. Enter invalid keyword & Perform the search
# Expected Result
- Relevant results should be displayed for a valid search keyword.
-  "No results found" message should be displayed for an invalid keyword.
# Notes

# Attachments
