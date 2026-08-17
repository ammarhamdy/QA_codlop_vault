---
tc_id: TC-FAQ-100
title: Verify FAQ Enabled State Change Is Reflected After Configuration Refresh
priority: High
status: Draft
type: Regression
linked_requirement: FAQ-REQ-042
tags:
  - test-case
  - faq
  - refresh
  - enabled
  - regression
---

# Test Data
| Field | Value |
| ----- | ----- |
| enabled (before) | true |
| enabled (after) | false |

# Preconditions
- An enabled FAQ section is rendered in the Mobile App.
- Administrator disables the section in the App Builder.

# Steps
1. Set the FAQ section `enabled` to `false` in the App Builder.
2. Save the section.
3. Refresh the mobile application configuration.
4. Observe the FAQ section in the Mobile App.

# Expected Result
- Changes to the FAQ section enabled state are reflected after refresh.
- The FAQ section is no longer displayed in the Mobile App.

# Notes

# Attachments