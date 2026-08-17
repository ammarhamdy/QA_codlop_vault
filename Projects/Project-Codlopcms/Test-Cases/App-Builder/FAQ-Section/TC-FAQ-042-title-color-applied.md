---
tc_id: TC-FAQ-042
title: Verify Title Color Is Applied to the FAQ Section Title
priority: Medium
status: Draft
type: Regression
linked_requirement: FAQ-REQ-019
tags:
  - test-case
  - faq
  - style
  - titleColor
  - mobile
  - regression
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.titleColor | #1a1a2e |
| settings.showTitle | true |
| style.useCustomTitleColor | true |

# Preconditions
- An FAQ section has `style.titleColor: "#1a1a2e"`, `style.useCustomTitleColor: true`, and `settings.showTitle: true` configured and saved.
- The mobile application has been refreshed with the latest configuration.

# Steps
1. Open the mobile application.
2. Navigate to the home screen.
3. Locate the FAQ section title and observe its color.

# Expected Result
- The mobile app applies the configured title color (#1a1a2e) to the FAQ section title when the title is displayed.

# Notes

# Attachments