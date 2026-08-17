---
tc_id: TC-FAQ-069
title: Display the FAQ Section Background When showBackground Is Enabled
priority: Medium
status: Draft
type: Regression
linked_requirement: FAQ-REQ-030
tags:
  - test-case
  - faq
  - style
  - showBackground
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
- When `showBackground` is `true`, the mobile app displays the configured `style.background` color (#f4f6f8) for the FAQ section.

# Notes

# Attachments