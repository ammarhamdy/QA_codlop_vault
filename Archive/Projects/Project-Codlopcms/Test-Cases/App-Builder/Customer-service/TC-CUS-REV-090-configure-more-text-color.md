---
tc_id: TC-CUS-REV-090
title: Configure the More/Action Text Color
priority: Medium
status: Draft
type: Functional
linked_requirement: CUS-REV-REQ-034
tags:
  - test-case
  - customer-review
  - showMoreTextColor
  - configuration
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| settings.showMoreTextColor | #0077ff |

# Preconditions
- Administrator is logged into the App Builder.
- A Customer Review section has been created and is open for editing.

# Steps
1. Locate the more/action text color option.
2. Set the more text color to #0077ff.
3. Save the section.
4. Retrieve the generated JSON configuration.

# Expected Result
- The Customer Review section contains a `settings.showMoreTextColor` attribute.
- The configured color is stored in the Customer Review section configuration.
- The generated JSON contains `settings.showMoreTextColor: "#0077ff"`.

# Notes

# Attachments