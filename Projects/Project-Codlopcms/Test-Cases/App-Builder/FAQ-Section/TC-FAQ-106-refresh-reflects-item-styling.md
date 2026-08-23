---
tc_id: TC-FAQ-106
title: Verify FAQ Item Styling Changes Are Reflected After Configuration Refresh
priority: High
status:
  - completed
type: Regression
linked_requirement: FAQ-REQ-042
tags:
  - test-case
  - faq
  - refresh
  - item-styling
  - regression
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.itemRadius (before) | 8 |
| style.itemRadius (after) | 16 |
| style.itemBackground (after) | #e8f0fe |

# Preconditions
- An FAQ section with `style.itemRadius: 8` is rendered in the Mobile App.
- Administrator updates FAQ item styling in the App Builder.

# Steps
1. Change the FAQ item radius to 16 and item background to #e8f0fe.
2. Save the section.
3. Refresh the mobile application configuration.
4. Observe the FAQ items in the Mobile App.

# Expected Result
- Changes to FAQ item styling are reflected after refresh.
- The Mobile App displays FAQ items with the updated radius and background.

# Notes

# Attachments