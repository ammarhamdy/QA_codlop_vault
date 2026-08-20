---
tc_id: TC-CUS-REV-015
title: Disable the Customer Review Section Using the Eye Icon
priority: High
status: Draft
type: Functional
linked_requirement: CUS-REV-REQ-007
tags:
  - test-case
  - customer-review
  - enabled
  - eye-icon
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| enabled (before) | true |
| enabled (after) | false |

# Preconditions
- Administrator is logged into the App Builder.
- A Customer Review section with `enabled: true` is open for editing.

# Steps
1. Locate the `eye` icon of the Customer Review section.
2. Click the `eye` icon to disable the section.
3. Save the section.
4. Retrieve the generated JSON configuration.
5. Inspect the `enabled` attribute.

# Expected Result
- The administrator can disable the Customer Review section using the `eye` icon.
- When `enabled` is set to `false`, the Customer Review section is not rendered in the Mobile App.
- The generated JSON reflects `enabled: false`.

# Notes

# Attachments