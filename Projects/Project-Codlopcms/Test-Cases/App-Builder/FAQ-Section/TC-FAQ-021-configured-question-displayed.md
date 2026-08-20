---
tc_id: TC-FAQ-021
title: Verify Configured Question Is Displayed in the Mobile App
priority: High
status:
  - completed
type: Regression
linked_requirement: FAQ-REQ-011
tags:
  - test-case
  - faq
  - question
  - mobile
  - regression
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| FAQ Item question | How do I update my payment method? |

# Preconditions
- An FAQ section with an FAQ item whose question is "How do I update my payment method?" has been saved.
- The mobile application has been refreshed with the latest configuration.

# Steps
1. Open the mobile application.
2. Navigate to the home screen.
3. Locate the FAQ section and the corresponding FAQ item.

# Expected Result
- The mobile app displays the configured question "How do I update my payment method?" as the FAQ item's question.

# Notes

# Attachments