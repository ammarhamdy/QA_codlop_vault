---
tc_id: TC-CUS-REV-004
title: Prevent Two Customer Review Sections from Sharing the Same Identifier
priority: High
status: Draft
type: Functional
linked_requirement: CUS-REV-REQ-002
tags:
  - test-case
  - customer-review
  - identifier
  - uniqueness
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| Section A | Customer Review Section |
| Section B | Customer Review Section |

# Preconditions
- Administrator is logged into the App Builder.
- The application's home screen configuration is open for editing.

# Steps
1. Create the first Customer Review section.
2. Note the `id` value assigned to the first section.
3. Create a second Customer Review section.
4. Retrieve the `id` value assigned to the second section.
5. Compare the two `id` values.

# Expected Result
- Each Customer Review section has a unique `id` value.
- Two different Customer Review sections do not share the same `id`; the `id` values differ.

# Notes

# Attachments