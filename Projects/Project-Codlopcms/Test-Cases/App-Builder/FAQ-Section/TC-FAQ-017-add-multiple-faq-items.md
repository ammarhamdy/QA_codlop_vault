---
tc_id: TC-FAQ-017
title: Add Multiple FAQ Items to the FAQ Section
priority: High
status: Draft
type: Functional
linked_requirement: FAQ-REQ-010
tags:
  - test-case
  - faq
  - items
  - data-object
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| FAQ Item 1 question | How do I reset my password? |
| FAQ Item 1 answer | Go to Settings > Security > Reset password. |
| FAQ Item 2 question | How do I contact support? |
| FAQ Item 2 answer | Email support@example.com. |

# Preconditions
- Administrator is logged into the App Builder.
- An FAQ section has been created and is open for editing.

# Steps
1. Add a new FAQ item with question "How do I reset my password?" and answer "Go to Settings > Security > Reset password.".
2. Add a second FAQ item with question "How do I contact support?" and answer "Email support@example.com.".
3. Save the section.
4. Retrieve the generated JSON configuration.

# Expected Result
- Multiple FAQ items are configured within the same FAQ section.
- Each FAQ item contains a question and a corresponding answer.
- The FAQ items are included in the generated JSON under `settings.data-object`.

# Notes

# Attachments