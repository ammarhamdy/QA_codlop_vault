---
tc_id: TC-FAQ-103
title: Verify Removed FAQ Items Are No Longer Displayed After Configuration Refresh
priority: High
status: Draft
type: Regression
linked_requirement: FAQ-REQ-042
tags:
  - test-case
  - faq
  - refresh
  - remove-item
  - regression
---

# Test Data
| Field | Value |
| ----- | ----- |
| FAQ Item to remove | Q: How do I contact support? |

# Preconditions
- An FAQ section containing the FAQ item "How do I contact support?" is rendered in the Mobile App.
- Administrator removes this FAQ item in the App Builder.

# Steps
1. Remove the FAQ item "How do I contact support?" in the App Builder.
2. Save the section.
3. Refresh the mobile application configuration.
4. Observe the FAQ section in the Mobile App.

# Expected Result
- Removed FAQ items are no longer displayed after refresh.
- The FAQ item "How do I contact support?" is not present in the Mobile App.

# Notes

# Attachments