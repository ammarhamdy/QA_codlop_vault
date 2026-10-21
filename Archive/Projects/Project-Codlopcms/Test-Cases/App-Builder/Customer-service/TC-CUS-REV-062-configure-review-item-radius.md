---
tc_id: TC-CUS-REV-062
title: Configure the Review Item Radius
priority: Medium
status: Draft
type: Functional
linked_requirement: CUS-REV-REQ-025
tags:
  - test-case
  - customer-review
  - style
  - itemRadius
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.itemRadius | 12 |

# Preconditions
- Administrator is logged into the App Builder.
- A Customer Review section has been created and is open for editing.

# Steps
1. Locate the review item radius option.
2. Set the review item corner radius to 12.
3. Save the section.
4. Retrieve the generated JSON configuration.

# Expected Result
- The Customer Review section contains a `style.itemRadius` attribute.
- The configured item radius value is stored in the section configuration.
- The generated JSON contains `style.itemRadius: 12`.

# Notes

# Attachments