---
tc_id: TC-FAQ-009
title: Verify Mobile App Displays Configured FAQ Section Title
priority: Medium
status:
  - completed
type: Functional
linked_requirement: FAQ-REQ-006
tags:
  - test-case
  - faq
  - title
  - mobile
  - positive
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Section Title | Frequently Asked Questions |
| settings.showTitle | true |

# Preconditions
- Administrator is logged into the App Builder.
- An FAQ section with title "Frequently Asked Questions" and `settings.showTitle: true` has been saved.

# Steps
1. Open the mobile application.
2. Navigate to the home screen.
3. Locate the FAQ section.
4. Observe the displayed section title.

# Expected Result
- The mobile app displays the configured title "Frequently Asked Questions" for the FAQ section.

# Notes

# Attachments