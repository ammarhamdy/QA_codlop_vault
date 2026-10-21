---
tc_id: TC-FAQ-023
title: Verify Configured Answer Is Displayed When FAQ Item Is Expanded
priority: High
status:
  - completed
type: Regression
linked_requirement: FAQ-REQ-012
tags:
  - test-case
  - faq
  - answer
  - mobile
  - regression
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| FAQ Item question | What is your return policy? |
| FAQ Item answer | Items can be returned within 30 days of delivery. |

# Preconditions
- An FAQ section with an FAQ item whose answer is "Items can be returned within 30 days of delivery." has been saved.
- The mobile application has been refreshed with the latest configuration.

# Steps
1. Open the mobile application.
2. Navigate to the home screen.
3. Locate the FAQ section and expand the configured FAQ item.

# Expected Result
- The mobile app displays the configured answer "Items can be returned within 30 days of delivery." when the corresponding FAQ item is expanded.

# Notes

# Attachments