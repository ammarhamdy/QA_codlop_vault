---
tc_id: TC-CUS-REV-056
title: Configure the Customer Review Section Radius
priority: Medium
status: Draft
type: Functional
linked_requirement: CUS-REV-REQ-023
tags:
  - test-case
  - customer-review
  - style
  - radius
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.radius | 12 |

# Preconditions
- Administrator is logged into the App Builder.
- A Customer Review section has been created and is open for editing.

# Steps
1. Locate the Customer Review section radius option.
2. Set the corner radius to 12.
3. Save the section.
4. Retrieve the generated JSON configuration.

# Expected Result
- The Customer Review section contains a `style.radius` attribute.
- The configured radius value is stored in the section configuration.
- The generated JSON contains `style.radius: 12`.

# Notes

# Attachments