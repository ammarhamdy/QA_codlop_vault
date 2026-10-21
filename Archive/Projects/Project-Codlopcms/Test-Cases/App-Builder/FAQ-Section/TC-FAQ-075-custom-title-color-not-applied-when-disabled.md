---
tc_id: TC-FAQ-075
title: Verify Custom Title Color Is Not Applied When useCustomTitleColor Is Disabled
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
| style.useCustomTitleColor | false |
| style.titleColor | #1a1a2e |
| settings.showTitle | true |

# Preconditions
- An FAQ section has `style.useCustomTitleColor: false` and `style.titleColor: "#1a1a2e"` configured and saved.
- The mobile application has been refreshed with the latest configuration.

# Steps
1. Open the mobile application.
2. Navigate to the home screen.
3. Locate the FAQ section title and observe its color.
4. Retrieve the generated JSON configuration.

# Expected Result
- When `useCustomTitleColor` is `false`, the mobile app does not apply `style.titleColor` as a custom title color.
- The configured `titleColor` value (#1a1a2e) is preserved in the generated JSON regardless of the `useCustomTitleColor` state.

# Notes

# Attachments