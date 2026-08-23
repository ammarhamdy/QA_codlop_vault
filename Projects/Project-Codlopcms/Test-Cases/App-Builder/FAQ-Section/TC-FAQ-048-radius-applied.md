---
tc_id: TC-FAQ-048
title: Verify Section Radius Is Applied by the Mobile App
priority: Medium
status:
  - completed
type: Regression
linked_requirement: FAQ-REQ-021
tags:
  - test-case
  - faq
  - style
  - radius
  - mobile
  - regression
run_result: fail
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.radius | 12 |

# Preconditions
- An FAQ section has `style.radius: 12` configured and saved.
- The mobile application has been refreshed with the latest configuration.

# Steps
1. Open the mobile application.
2. Navigate to the home screen.
3. Locate the FAQ section and observe its corner radius.

# Expected Result
- The mobile app applies the configured radius (12) to the FAQ section corners.

# Notes

# Attachments