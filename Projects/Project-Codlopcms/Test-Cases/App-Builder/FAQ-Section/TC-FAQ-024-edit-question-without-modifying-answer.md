---
tc_id: TC-FAQ-024
title: Edit the Question of an Existing FAQ Item Without Modifying the Answer
priority: High
status: Draft
type: Functional
linked_requirement: FAQ-REQ-013
tags:
  - test-case
  - faq
  - edit
  - question
  - data-integrity
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| Original question | How do I reset my password? |
| Updated question | How can I change my password? |
| Answer (unchanged) | Go to Settings > Security > Reset password. |

# Preconditions
- Administrator is logged into the App Builder.
- An FAQ item with question "How do I reset my password?" and the specified answer exists.

# Steps
1. Open the FAQ item for editing.
2. Change the question to "How can I change my password?".
3. Save the section.
4. Retrieve the generated JSON configuration.

# Expected Result
- The question of the existing FAQ item is updated.
- Updating the question does not modify the corresponding answer.
- The generated JSON reflects the updated question and the unchanged answer under `settings.data-object`.

# Notes

# Attachments