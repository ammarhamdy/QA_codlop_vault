---
tc_id: TC-FAQ-099
title: Verify FAQ Title Change Is Reflected After Configuration Refresh
priority: High
status:
  - completed
type: Regression
linked_requirement: FAQ-REQ-042
tags:
  - test-case
  - faq
  - refresh
  - title
  - regression
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Title (before) | Frequently Asked Questions |
| Title (after) | Help Center |

# Preconditions
- An FAQ section with title "Frequently Asked Questions" is rendered in the Mobile App.
- Administrator updates the title to "Help Center" in the App Builder.

# Steps
1. Change the FAQ section title to "Help Center" in the App Builder.
2. Save the section.
3. Refresh the mobile application configuration.
4. Observe the FAQ section title in the Mobile App.

# Expected Result
- Changes to the FAQ section title are reflected after refresh.
- The Mobile App displays "Help Center" as the FAQ section title.

# Notes

# Attachments