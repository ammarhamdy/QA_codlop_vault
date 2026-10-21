---
tc_id: TC-FAQ-078
title: Verify More/Action Text Color Is Applied by the Mobile App
priority: Medium
status:
type: Regression
linked_requirement: FAQ-REQ-034
tags:
  - test-case
  - faq
  - settings
  - showMoreTextColor
  - mobile
  - regression
---

# Test Data
| Field | Value |
| ----- | ----- |
| settings.showMoreTextColor | #0077ff |

# Preconditions
- An FAQ section has `settings.showMoreTextColor: "#0077ff"` configured and saved.
- The mobile application has been refreshed with the latest configuration.

# Steps
1. Open the mobile application.
2. Navigate to the home screen.
3. Locate the FAQ section's more/action text and observe its color.

# Expected Result
- The mobile app applies the configured color (#0077ff) to the FAQ section's more/action text when that text is displayed.

# Notes

# Attachments