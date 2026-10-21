---
tc_id: TC-FAQ-003
title: Prevent Two FAQ Sections from Sharing the Same Identifier
priority: High
status:
  - completed
type: Functional
linked_requirement: FAQ-REQ-002
tags:
  - test-case
  - faq
  - identifier
  - uniqueness
  - negative
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Section A | FAQ Section |
| Section B | FAQ Section |

# Preconditions
- Administrator is logged into the App Builder.
- The application's home screen configuration is open for editing.

# Steps
1. Create the first FAQ section.
2. Note the `id` value assigned to the first FAQ section.
3. Create a second FAQ section.
4. Retrieve the `id` value assigned to the second FAQ section.
5. Compare the two `id` values.

# Expected Result
- Each FAQ section has a unique `id` value.
- The two FAQ sections do not share the same `id`; the `id` values differ.

# Notes

# Attachments