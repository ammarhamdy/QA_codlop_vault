---
tc_id: TC-FAQ-045
title: Verify Text Color Is Applied When Custom Text Color Option Is Enabled
priority: Medium
status: Draft
type: Regression
linked_requirement: FAQ-REQ-020
tags:
  - test-case
  - faq
  - style
  - textColor
  - mobile
  - regression
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.textColor | #444444 |
| Custom text color option | enabled |

# Preconditions
- An FAQ section has `style.textColor: "#444444"` and the corresponding custom text color option enabled.
- The mobile application has been refreshed with the latest configuration.

# Steps
1. Open the mobile application.
2. Navigate to the home screen.
3. Locate the FAQ section text and observe its color.

# Expected Result
- The mobile app applies the configured text color (#444444) to the FAQ section text when the corresponding custom text color option is enabled.

# Notes

# Attachments