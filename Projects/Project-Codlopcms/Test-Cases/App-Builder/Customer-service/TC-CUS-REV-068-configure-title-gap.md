---
tc_id: TC-CUS-REV-068
title: Configure the Title Gap
priority: Medium
status: Draft
type: Functional
linked_requirement: CUS-REV-REQ-027
tags:
  - test-case
  - customer-review
  - style
  - titleGap
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| style.titleGap | 12 |

# Preconditions
- Administrator is logged into the App Builder.
- A Customer Review section has been created and is open for editing.

# Steps
1. Locate the title gap option.
2. Set the title gap value to 12.
3. Save the section.
4. Retrieve the generated JSON configuration.

# Expected Result
- The Customer Review section contains a `style.titleGap` attribute.
- The configured title gap value is stored in the section configuration.
- The generated JSON contains `style.titleGap: 12`.

# Notes

# Attachments