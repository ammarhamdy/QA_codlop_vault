---
tc_id: TC-FAQ-051
title: Verify Section Padding Is Applied by the Mobile App
priority: Medium
status:
  - completed
type: Regression
linked_requirement: FAQ-REQ-022
tags:
  - test-case
  - faq
  - style
  - padding
  - mobile
  - regression
run_result: fail
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.padding | 16 |

# Preconditions
- An FAQ section has `style.padding: 16` configured and saved.
- The mobile application has been refreshed with the latest configuration.

# Steps
1. Open the mobile application.
2. Navigate to the home screen.
3. Locate the FAQ section and observe its internal spacing.

# Expected Result
- The mobile app applies the configured padding (16) to the FAQ section.

# Notes

# Attachments