---
tc_id: TC-002
title: Verify Meta Data Appears in Page Source
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-003-General Settings Management
tags:
  - test-case
run_result: Pass
---

# Test Data
| Field                     | Value      |
| ------------------------- | ---------- |
| Administrator Credentials | Email/Pass |
|                           |            |

# Preconditions
Admin is logged in and on Admins page
# Steps
1. Open the website.  
2. Open View Page Source.  
3. Search for `meta title,description,keywords`.
# Expected Result
The configured Meta Title, Description &Keywords appears correctly in the page source.
# Notes

# Attachments
