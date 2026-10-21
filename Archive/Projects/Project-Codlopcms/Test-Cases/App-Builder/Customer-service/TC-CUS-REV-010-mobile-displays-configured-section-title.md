---
tc_id: TC-CUS-REV-010
title: Verify the Mobile App Displays the Configured Section Title
priority: Medium
status: Draft
type: Regression
linked_requirement: CUS-REV-REQ-005
tags:
  - test-case
  - customer-review
  - title
  - rendering
  - regression
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| title | What Our Customers Say |
| settings.showTitle | true |

# Preconditions
- A Customer Review section with title "What Our Customers Say" and `settings.showTitle: true` is saved.
- The mobile application has been refreshed with the latest configuration.

# Steps
1. Open the mobile application.
2. Navigate to the home screen.
3. Locate the Customer Review section.
4. Observe the section title.

# Expected Result
- The Mobile App displays the configured title "What Our Customers Say" when section title display is enabled.

# Notes

# Attachments