---
tc_id: TC-FAQ-057
title: Verify Section Shadow Is Applied by the Mobile App
priority: Medium
status:
  - closed
type: Regression
linked_requirement: FAQ-REQ-024
tags:
  - test-case
  - faq
  - style
  - shadow
  - mobile
  - regression
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.shadow | 0 2 4 rgba(0,0,0,0.1) |

# Preconditions
- An FAQ section has `style.shadow: "0 2 4 rgba(0,0,0,0.1)"` configured and saved.
- The mobile application has been refreshed with the latest configuration.

# Steps
1. Open the mobile application.
2. Navigate to the home screen.
3. Locate the FAQ section and observe its shadow appearance.

# Expected Result
- The mobile app applies the configured shadow to the FAQ section.

# Notes

# Attachments