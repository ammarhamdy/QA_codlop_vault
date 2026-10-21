---
tc_id: TC-CUS-REV-065
title: Configure the Customer Review Section Shadow
priority: Medium
status: Draft
type: Functional
linked_requirement: CUS-REV-REQ-026
tags:
  - test-case
  - customer-review
  - style
  - shadow
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.shadow | 0 2 4 rgba(0,0,0,0.1) |

# Preconditions
- Administrator is logged into the App Builder.
- A Customer Review section has been created and is open for editing.

# Steps
1. Locate the Customer Review section shadow option.
2. Set the shadow value to "0 2 4 rgba(0,0,0,0.1)".
3. Save the section.
4. Retrieve the generated JSON configuration.

# Expected Result
- The Customer Review section contains a `style.shadow` attribute.
- The configured shadow value is stored in the section configuration.
- The generated JSON contains the configured value in `style.shadow`.

# Notes

# Attachments