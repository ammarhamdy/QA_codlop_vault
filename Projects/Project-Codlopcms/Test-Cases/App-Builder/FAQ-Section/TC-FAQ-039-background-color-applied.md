---
tc_id: TC-FAQ-039
title: Verify Section Background Color Is Applied by the Mobile App
priority: Medium
status: Draft
type: Regression
linked_requirement: FAQ-REQ-018
tags:
  - test-case
  - faq
  - style
  - background
  - mobile
  - regression
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.background | #f4f6f8 |
| style.showBackground | true |

# Preconditions
- An FAQ section has `style.background: "#f4f6f8"` and `style.showBackground: true` configured and saved.
- The mobile application has been refreshed with the latest configuration.

# Steps
1. Open the mobile application.
2. Navigate to the home screen.
3. Locate the FAQ section and observe its background.

# Expected Result
- The mobile app applies the configured background color (#f4f6f8) to the FAQ section when the section background is enabled.

# Notes

# Attachments