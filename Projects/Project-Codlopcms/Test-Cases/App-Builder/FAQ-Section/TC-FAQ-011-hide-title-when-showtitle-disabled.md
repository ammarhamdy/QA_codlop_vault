---
tc_id: TC-FAQ-011
title: Hide FAQ Section Title When showTitle Is Disabled
priority: Medium
status: Draft
type: Functional
linked_requirement: FAQ-REQ-007
tags:
  - test-case
  - faq
  - title
  - visibility
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| Title | FAQ & Support |
| settings.showTitle | false |

# Preconditions
- Administrator is logged into the App Builder.
- An FAQ section with a configured title and `settings.showTitle: false` has been saved.
- The mobile application has been refreshed with the latest configuration.

# Steps
1. Open the mobile application.
2. Navigate to the home screen.
3. Observe whether the FAQ section title is displayed.

# Expected Result
- The mobile app does not display the FAQ section title.
- The generated JSON reflects `showTitle: false`.

# Notes

# Attachments