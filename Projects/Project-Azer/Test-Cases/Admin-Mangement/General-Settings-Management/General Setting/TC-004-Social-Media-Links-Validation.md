---
tc_id: TC-004
title: Verify Social Media Links Validation
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: US-003-General Settings Management
tags:
  - test-case
---

# Test Data
| Field                     | Value      |
| ------------------------- | ---------- |
| Administrator Credentials | Email/Pass |
|                           |            |

# Preconditions
Admin is logged in and on General Settings page
# Steps
1. Enter valid social media URLs.
2. Save the settings.
3. Enter invalid social media URLs.
# Expected Result
   - Valid social media URLs are saved successfully.
  -  Invalid URLs are rejected and appropriate validation messages are displayed.
# Notes

# Attachments
