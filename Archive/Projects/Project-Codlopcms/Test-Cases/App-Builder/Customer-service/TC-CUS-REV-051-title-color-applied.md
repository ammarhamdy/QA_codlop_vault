---
tc_id: TC-CUS-REV-051
title: Verify the Section Title Color Is Applied in the Mobile App
priority: Medium
status: Draft
type: Regression
linked_requirement: CUS-REV-REQ-021
tags:
  - test-case
  - customer-review
  - style
  - titleColor
  - rendering
  - regression
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.titleColor | #1a1a2e |
| settings.showTitle | true |

# Preconditions
- A Customer Review section with `style.titleColor: "#1a1a2e"` and `settings.showTitle: true` is saved.
- The mobile application has been refreshed with the latest configuration.

# Steps
1. Open the mobile application.
2. Navigate to the home screen.
3. Locate the Customer Review section title.
4. Observe the title color.

# Expected Result
- The Mobile App applies the configured title color (#1a1a2e) to the section title when the title is displayed.

# Notes

# Attachments