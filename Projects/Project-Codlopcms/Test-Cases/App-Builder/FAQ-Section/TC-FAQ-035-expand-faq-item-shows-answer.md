---
tc_id: TC-FAQ-035
title: Expand an FAQ Item to Display Its Answer
priority: High
status: Draft
type: Regression
linked_requirement: FAQ-REQ-017
tags:
  - test-case
  - faq
  - expand
  - accordion
  - mobile
  - regression
---

# Test Data
| Field | Value |
| ----- | ----- |
| FAQ Item question | How do I reset my password? |
| FAQ Item answer | Go to Settings > Security. |

# Preconditions
- An FAQ section with the FAQ item above has been configured and saved.
- The mobile application has been refreshed with the latest configuration.

# Steps
1. Open the mobile application.
2. Navigate to the home screen.
3. Locate the FAQ section.
4. Interact with (tap) the FAQ item's question.

# Expected Result
- The user can expand the FAQ item by interacting with its question.
- When the FAQ item is expanded, its corresponding answer is displayed.

# Notes

# Attachments