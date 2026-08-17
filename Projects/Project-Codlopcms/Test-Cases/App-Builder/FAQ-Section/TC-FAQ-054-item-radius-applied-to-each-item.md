---
tc_id: TC-FAQ-054
title: Verify FAQ Item Radius Is Applied to Each Item by the Mobile App
priority: Medium
status: Draft
type: Regression
linked_requirement: FAQ-REQ-023
tags:
  - test-case
  - faq
  - style
  - itemRadius
  - mobile
  - regression
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.itemRadius | 8 |
| FAQ Items | 2 items configured |

# Preconditions
- An FAQ section has `style.itemRadius: 8` and at least two FAQ items configured.
- The mobile application has been refreshed with the latest configuration.

# Steps
1. Open the mobile application.
2. Navigate to the home screen.
3. Locate the FAQ section and observe the corner radius of each FAQ item.

# Expected Result
- The mobile app applies the configured radius (8) to each FAQ item.

# Notes

# Attachments