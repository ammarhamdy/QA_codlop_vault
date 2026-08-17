---
tc_id: TC-FAQ-064
title: Verify Top and Bottom Gaps Are Applied Around the FAQ Section
priority: Medium
status: Draft
type: Regression
linked_requirement: FAQ-REQ-026
tags:
  - test-case
  - faq
  - style
  - gapTop
  - gapBottom
  - mobile
  - regression
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.gapTop | 16 |
| style.gapBottom | 24 |

# Preconditions
- An FAQ section has `style.gapTop: 16` and `style.gapBottom: 24` configured and saved.
- The mobile application has been refreshed with the latest configuration.

# Steps
1. Open the mobile application.
2. Navigate to the home screen.
3. Locate the FAQ section and observe the spacing above and below it.

# Expected Result
- The mobile app applies `gapTop` (16) as the spacing above the FAQ section.
- The mobile app applies `gapBottom` (24) as the spacing below the FAQ section.

# Notes

# Attachments