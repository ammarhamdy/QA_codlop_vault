---
tc_id: TC-FAQ-015
title: Verify Disabled FAQ Section Is Not Rendered on the Home Screen
priority: High
status:
  - completed
type: Regression
linked_requirement: FAQ-REQ-009
tags:
  - test-case
  - faq
  - disabled
  - rendering
  - regression
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| enabled | false |
| Title | Hidden FAQ |
| FAQ Items | 2 items configured |

# Preconditions
- An FAQ section with title "Hidden FAQ" and 2 configured FAQ items has `enabled: false` in its configuration.
- The mobile application has been refreshed with the latest configuration.

# Steps
1. Open the mobile application.
2. Navigate to the home screen.
3. Search for the disabled FAQ section.

# Expected Result
- The mobile app does not render the FAQ section.
- The FAQ section title is not displayed.
- The FAQ items are not displayed.

# Notes

# Attachments