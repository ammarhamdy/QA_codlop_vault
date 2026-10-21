---
tc_id: TC-CUS-REV-057
title: Verify the Section Radius Is Applied in the Mobile App
priority: Medium
status: Draft
type: Regression
linked_requirement: CUS-REV-REQ-023
tags:
  - test-case
  - customer-review
  - style
  - radius
  - rendering
  - regression
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.radius | 12 |

# Preconditions
- A Customer Review section with `style.radius: 12` is saved.
- The mobile application has been refreshed with the latest configuration.

# Steps
1. Open the mobile application.
2. Navigate to the home screen.
3. Locate the Customer Review section.
4. Observe the section corner radius.

# Expected Result
- The Mobile App applies the configured radius (12) to the Customer Review section.

# Notes

# Attachments