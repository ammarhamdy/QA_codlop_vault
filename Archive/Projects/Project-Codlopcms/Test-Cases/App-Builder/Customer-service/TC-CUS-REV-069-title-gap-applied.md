---
tc_id: TC-CUS-REV-069
title: Verify the Title Gap Is Applied in the Mobile App
priority: Medium
status: Draft
type: Regression
linked_requirement: CUS-REV-REQ-027
tags:
  - test-case
  - customer-review
  - style
  - titleGap
  - rendering
  - regression
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.titleGap | 12 |

# Preconditions
- A Customer Review section with `style.titleGap: 12` is saved.
- The mobile application has been refreshed with the latest configuration.

# Steps
1. Open the mobile application.
2. Navigate to the home screen.
3. Locate the Customer Review section.
4. Observe the spacing between the section title and the review content.

# Expected Result
- The Mobile App applies the configured title gap between the section title and customer review content.

# Notes

# Attachments