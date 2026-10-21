---
tc_id: TC-CUS-REV-048
title: Verify the Section Background Color Is Applied in the Mobile App
priority: Medium
status: Draft
type: Regression
linked_requirement: CUS-REV-REQ-020
tags:
  - test-case
  - customer-review
  - style
  - background
  - rendering
  - regression
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.background | #f4f6f8 |
| style.showBackground | true |

# Preconditions
- A Customer Review section with `style.background: "#f4f6f8"` and `style.showBackground: true` is saved.
- The mobile application has been refreshed with the latest configuration.

# Steps
1. Open the mobile application.
2. Navigate to the home screen.
3. Locate the Customer Review section.
4. Observe the section background color.

# Expected Result
- The Mobile App applies the configured background color (#f4f6f8) to the Customer Review section when the section background is enabled.

# Notes

# Attachments