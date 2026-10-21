---
tc_id: TC-CUS-REV-016
title: Verify a Disabled Customer Review Section Is Not Rendered on the Home Screen
priority: High
status: Draft
type: Regression
linked_requirement: CUS-REV-REQ-008
tags:
  - test-case
  - customer-review
  - disabled
  - rendering
  - regression
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| enabled | false |
| Title | Hidden Reviews |
| Review Items | 2 items configured |

# Preconditions
- A Customer Review section with title "Hidden Reviews" and 2 configured review items has `enabled: false` in its configuration.
- The mobile application has been refreshed with the latest configuration.

# Steps
1. Open the mobile application.
2. Navigate to the home screen.
3. Search for the disabled Customer Review section.

# Expected Result
- The Mobile App does not render the Customer Review section when `enabled: false`.
- The Customer Review section title is not displayed.
- The customer review items are not displayed.

# Notes

# Attachments