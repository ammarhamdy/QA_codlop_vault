---
tc_id: TC-FAQ-010
title: Display FAQ Section Title When showTitle Is Enabled
priority: Medium
status: Draft
type: Functional
linked_requirement: FAQ-REQ-007
tags:
  - test-case
  - faq
  - title
  - visibility
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| Title | FAQ & Support |
| settings.showTitle | true |

# Preconditions
- Administrator is logged into the App Builder.
- An FAQ section with title "FAQ & Support" and `settings.showTitle: true` has been saved.
- The mobile application has been refreshed with the latest configuration.

# Steps
1. Open the mobile application.
2. Navigate to the home screen.
3. Observe the FAQ section title.

# Expected Result
- The mobile app displays the FAQ section title "FAQ & Support".
- The generated JSON reflects `showTitle: true`.

# Notes

# Attachments