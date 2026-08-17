---
tc_id: TC-FAQ-104
title: Verify FAQ Item Order Changes Are Reflected After Configuration Refresh
priority: High
status: Draft
type: Regression
linked_requirement: FAQ-REQ-042
tags:
  - test-case
  - faq
  - refresh
  - order
  - regression
---

# Test Data
| Field | Value |
| ----- | ----- |
| Order (before) | Item A, Item B |
| Order (after) | Item B, Item A |

# Preconditions
- An FAQ section renders items in the order A, B in the Mobile App.
- Administrator reorders the items to B, A in the App Builder.

# Steps
1. Reorder the FAQ items so that B appears before A.
2. Save the section.
3. Refresh the mobile application configuration.
4. Observe the FAQ item order in the Mobile App.

# Expected Result
- Changes to the FAQ item order are reflected after refresh.
- The Mobile App renders Item B before Item A.

# Notes

# Attachments