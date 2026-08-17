---
tc_id: TC-FAQ-060
title: Verify Title Gap Is Applied Between Title and FAQ Content
priority: Medium
status: Draft
type: Regression
linked_requirement: FAQ-REQ-025
tags:
  - test-case
  - faq
  - style
  - titleGap
  - mobile
  - regression
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.titleGap | 8 |
| settings.showTitle | true |

# Preconditions
- An FAQ section has `style.titleGap: 8` and `settings.showTitle: true` configured and saved.
- The mobile application has been refreshed with the latest configuration.

# Steps
1. Open the mobile application.
2. Navigate to the home screen.
3. Locate the FAQ section and observe the spacing between its title and FAQ content.

# Expected Result
- The mobile app applies the configured title gap (8) between the section title and FAQ content.

# Notes

# Attachments