---
tc_id: TC-FAQ-072
title: Hide the FAQ Section Border When showBorder Is Disabled
priority: Medium
status:
  - completed
type: Regression
linked_requirement: FAQ-REQ-031
tags:
  - test-case
  - faq
  - style
  - showBorder
  - mobile
  - regression
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.showBorder | false |

# Preconditions
- An FAQ section has `style.showBorder: false` configured and saved.
- The mobile application has been refreshed with the latest configuration.

# Steps
1. Open the mobile application.
2. Navigate to the home screen.
3. Locate the FAQ section and observe whether a border is displayed around it.
4. Retrieve the generated JSON configuration.

# Expected Result
- When `showBorder` is `false`, the mobile app hides the border around the FAQ section.
- The generated JSON reflects `showBorder: false`.

# Notes

# Attachments