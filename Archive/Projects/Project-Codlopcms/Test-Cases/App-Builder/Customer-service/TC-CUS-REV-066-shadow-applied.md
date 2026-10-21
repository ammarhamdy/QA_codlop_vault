---
tc_id: TC-CUS-REV-066
title: Verify the Section Shadow Is Applied in the Mobile App
priority: Medium
status: Draft
type: Regression
linked_requirement: CUS-REV-REQ-026
tags:
  - test-case
  - customer-review
  - style
  - shadow
  - rendering
  - regression
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.shadow | 0 2 4 rgba(0,0,0,0.1) |

# Preconditions
- A Customer Review section with the shadow value above is saved.
- The mobile application has been refreshed with the latest configuration.

# Steps
1. Open the mobile application.
2. Navigate to the home screen.
3. Locate the Customer Review section.
4. Observe the section shadow appearance.

# Expected Result
- The Mobile App applies the configured shadow to the Customer Review section.

# Notes

# Attachments