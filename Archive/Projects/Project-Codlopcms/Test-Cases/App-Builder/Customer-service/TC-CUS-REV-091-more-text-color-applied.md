---
tc_id: TC-CUS-REV-091
title: Verify the More/Action Text Color Is Applied in the Mobile App
priority: Medium
status: Draft
type: Regression
linked_requirement: CUS-REV-REQ-034
tags:
  - test-case
  - customer-review
  - showMoreTextColor
  - rendering
  - regression
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| settings.showMoreTextColor | #0077ff |

# Preconditions
- A Customer Review section with `settings.showMoreTextColor: "#0077ff"` is saved.
- The mobile application has been refreshed with the latest configuration.

# Steps
1. Open the mobile application.
2. Navigate to the home screen.
3. Locate the Customer Review section.
4. Observe the more/action text color when it is displayed.

# Expected Result
- The Mobile App applies the configured color (#0077ff) to the Customer Review section's more/action text when that text is displayed.

# Notes

# Attachments