---
tc_id: TC-FAQ-019
title: Verify FAQ Section Title Display Depends on showTitle Setting
priority: Medium
status:
  - completed
type: Functional
linked_requirement: FAQ-REQ-007
tags:
  - test-case
  - faq
  - title
  - showTitle
  - positive
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Title | Frequently Asked Questions |
| settings.showTitle (enabled) | true |
| settings.showTitle (disabled) | false |

# Preconditions
- Administrator is logged into the App Builder.
- An FAQ section has been created and saved.

# Steps
1. Set `settings.showTitle` to `true` and save the section.
2. Open the mobile app and navigate to the home screen; observe the title.
3. Return to the App Builder, set `settings.showTitle` to `false`, and save.
4. Refresh the mobile app and observe the title again.

# Expected Result
- When `showTitle` is `true`, the mobile app displays the configured FAQ section title.
- When `showTitle` is `false`, the mobile app does not display the FAQ section title.
- The generated JSON reflects the configured `showTitle` value in each state.

# Notes

# Attachments