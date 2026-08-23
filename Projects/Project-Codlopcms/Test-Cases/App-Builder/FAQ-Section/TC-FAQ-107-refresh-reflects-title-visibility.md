---
tc_id: TC-FAQ-107
title: Verify FAQ Title Visibility Change Is Reflected After Configuration Refresh
priority: High
status:
  - completed
type: Regression
linked_requirement: FAQ-REQ-042
tags:
  - test-case
  - faq
  - refresh
  - showTitle
  - regression
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| settings.showTitle (before) | true |
| settings.showTitle (after) | false |
| Title | Frequently Asked Questions |

# Preconditions
- An FAQ section with `settings.showTitle: true` displays its title in the Mobile App.
- Administrator changes title visibility in the App Builder.

# Steps
1. Change `settings.showTitle` from `true` to `false`.
2. Save the section.
3. Refresh the mobile application configuration.
4. Observe the FAQ section title in the Mobile App.

# Expected Result
- Changes to FAQ title visibility are reflected after refresh.
- The FAQ section title is no longer displayed in the Mobile App.

# Notes

# Attachments