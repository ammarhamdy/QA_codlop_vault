---
tc_id: TC-CUS-REV-002
title: Verify the Saved Customer Review Section Is Provided to and Rendered by the Mobile App
priority: High
status: Draft
type: Functional
linked_requirement: CUS-REV-REQ-001
tags:
  - test-case
  - customer-review
  - creation
  - rendering
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| Customer Review section | Customer Reviews |
| Application configuration | Home screen config |

# Preconditions
- Administrator is logged into the App Builder.
- A Customer Review section has been created and saved.

# Steps
1. Save the configured Customer Review section.
2. Retrieve the generated JSON configuration.
3. Confirm the saved Customer Review section is included in the JSON configuration.
4. Provide the JSON configuration to the Mobile App.
5. Open the Mobile App home screen.

# Expected Result
- The saved Customer Review section is included in the JSON configuration provided to the Mobile App.
- The Mobile App renders the created Customer Review section based on its configuration.
- The Customer Review section is displayed on the home screen.

# Notes

# Attachments