---
tc_id: TC-FAQ-071
title: Display the FAQ Section Border When showBorder Is Enabled
priority: Medium
status: Draft
type: Regression
linked_requirement: FAQ-REQ-031
tags:
  - test-case
  - faq
  - style
  - showBorder
  - mobile
  - regression
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.showBorder | true |

# Preconditions
- An FAQ section has `style.showBorder: true` configured and saved.
- The mobile application has been refreshed with the latest configuration.

# Steps
1. Open the mobile application.
2. Navigate to the home screen.
3. Locate the FAQ section and observe whether a border is displayed around it.

# Expected Result
- When `showBorder` is `true`, the mobile app displays the border around the FAQ section.

# Notes

# Attachments