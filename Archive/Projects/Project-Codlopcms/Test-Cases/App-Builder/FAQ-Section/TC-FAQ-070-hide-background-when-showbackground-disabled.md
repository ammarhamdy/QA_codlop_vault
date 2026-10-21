---
tc_id: TC-FAQ-070
title: Hide the FAQ Section Background When showBackground Is Disabled
priority: Medium
status:
  - completed
type: Regression
linked_requirement: FAQ-REQ-030
tags:
  - test-case
  - faq
  - style
  - showBackground
  - mobile
  - regression
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.background | #f4f6f8 |
| style.showBackground | false |

# Preconditions
- An FAQ section has `style.background: "#f4f6f8"` and `style.showBackground: false` configured and saved.
- The mobile application has been refreshed with the latest configuration.

# Steps
1. Open the mobile application.
2. Navigate to the home screen.
3. Locate the FAQ section and observe whether the background is displayed.
4. Retrieve the generated JSON configuration.

# Expected Result
- When `showBackground` is `false`, the mobile app hides the FAQ section background.
- The generated JSON reflects `showBackground: false` and still contains `style.background: "#f4f6f8"` (the value is not removed).

# Notes

# Attachments