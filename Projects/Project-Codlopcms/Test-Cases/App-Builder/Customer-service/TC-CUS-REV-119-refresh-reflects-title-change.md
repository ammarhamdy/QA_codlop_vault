---
tc_id: TC-CUS-REV-119
title: Verify the Section Title Change Is Reflected After Refresh
priority: High
status: Draft
type: Regression
linked_requirement: CUS-REV-REQ-043
tags:
  - test-case
  - customer-review
  - refresh
  - title
  - regression
---

# Test Data
| Field | Value |
| ----- | ----- |
| title (before) | Customer Reviews |
| title (after) | What Our Customers Say |
| settings.showTitle | true |

# Preconditions
- A Customer Review section with title "Customer Reviews" is rendered in the Mobile App.
- The section title has been changed to "What Our Customers Say" in the App Builder and saved.

# Steps
1. Note the title currently displayed in the Mobile App.
2. Refresh the mobile application configuration.
3. Note the title displayed after refresh.

# Expected Result
- Changes to the Customer Review section title are reflected after refresh.
- The Mobile App displays the updated title "What Our Customers Say".

# Notes

# Attachments