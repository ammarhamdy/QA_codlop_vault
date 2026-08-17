---
tc_id: TC-FAQ-027
title: Remove an FAQ Item from the FAQ Section
priority: High
status: Draft
type: Functional
linked_requirement: FAQ-REQ-014
tags:
  - test-case
  - faq
  - remove
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| FAQ Item to remove | Item 2 (Q: How do I contact support?) |
| Remaining FAQ Item | Item 1 (Q: How do I reset my password?) |

# Preconditions
- Administrator is logged into the App Builder.
- An FAQ section with at least two FAQ items exists and is open for editing.

# Steps
1. Remove FAQ Item 2 from the FAQ section.
2. Save the section.
3. Retrieve the generated JSON configuration.

# Expected Result
- The removed FAQ item is deleted from the `settings.data-object` collection.
- The removed FAQ item's question and answer are no longer included in the generated JSON.

# Notes

# Attachments