---
tc_id: TC-FAQ-074
title: Apply Custom Title Color When useCustomTitleColor Is Enabled
priority: Medium
status:
  - completed
type: Regression
linked_requirement: FAQ-REQ-032
tags:
  - test-case
  - faq
  - style
  - useCustomTitleColor
  - mobile
  - regression
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.useCustomTitleColor | true |
| style.titleColor | #1a1a2e |
| settings.showTitle | true |

# Preconditions
- An FAQ section has `style.useCustomTitleColor: true` and `style.titleColor: "#1a1a2e"` configured and saved.
- The mobile application has been refreshed with the latest configuration.

# Steps
1. Open the mobile application.
2. Navigate to the home screen.
3. Locate the FAQ section title and observe its color.

# Expected Result
- When `useCustomTitleColor` is `true`, the mobile app applies the configured `style.titleColor` (#1a1a2e) to the FAQ section title.

# Notes

# Attachments