---
tc_id: TC-CUS-REV-073
title: Verify the Top and Bottom Section Gaps Are Applied in the Mobile App
priority: Medium
status: Draft
type: Regression
linked_requirement: CUS-REV-REQ-028
tags:
  - test-case
  - customer-review
  - style
  - gapTop
  - gapBottom
  - rendering
  - regression
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.gapTop | 16 |
| style.gapBottom | 24 |

# Preconditions
- A Customer Review section with `style.gapTop: 16` and `style.gapBottom: 24` is saved.
- The mobile application has been refreshed with the latest configuration.

# Steps
1. Open the mobile application.
2. Navigate to the home screen.
3. Locate the Customer Review section.
4. Observe the spacing above and below the section.

# Expected Result
- The Mobile App applies `gapTop` as the spacing above the Customer Review section.
- The Mobile App applies `gapBottom` as the spacing below the Customer Review section.

# Notes

# Attachments