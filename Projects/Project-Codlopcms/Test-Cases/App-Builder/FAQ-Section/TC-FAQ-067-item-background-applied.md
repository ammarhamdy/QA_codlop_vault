---
tc_id: TC-FAQ-067
title: Verify FAQ Item Background Is Applied When Item Background Display Is Enabled
priority: Medium
status: Draft
type: Regression
linked_requirement: FAQ-REQ-027
tags:
  - test-case
  - faq
  - style
  - itemBackground
  - mobile
  - regression
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.itemBackground | #f4f6f8 |
| Item background display | enabled |

# Preconditions
- An FAQ section has `style.itemBackground: "#f4f6f8"` with item background display enabled.
- The mobile application has been refreshed with the latest configuration.

# Steps
1. Open the mobile application.
2. Navigate to the home screen.
3. Locate the FAQ section and observe the background of each FAQ item.

# Expected Result
- The mobile app applies the configured background color (#f4f6f8) to each FAQ item when item background display is enabled.

# Notes

# Attachments