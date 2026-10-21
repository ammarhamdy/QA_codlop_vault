---
tc_id: TC-FAQ-020
title: Configure the Question of an FAQ Item
priority: High
status:
  - completed
type: Functional
linked_requirement: FAQ-REQ-011
tags:
  - test-case
  - faq
  - question
  - positive
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| FAQ Item question | How do I update my payment method? |
| FAQ Item answer | Go to Account > Payment Methods. |

# Preconditions
- Administrator is logged into the App Builder.
- An FAQ section has been created and is open for editing.

# Steps
1. Add an FAQ item within the FAQ section.
2. Enter the question "How do I update my payment method?" for the FAQ item.
3. Save the section.
4. Retrieve the generated JSON configuration.

# Expected Result
- Each FAQ item contains a `question` attribute.
- The configured question is stored within the corresponding FAQ item.
- The generated JSON contains the configured question under `settings.data-object`.

# Notes

# Attachments