---
tc_id: TC-CUS-REV-014
title: Enable the Customer Review Section Using the Eye Icon
priority: High
status: Draft
type: Functional
linked_requirement: CUS-REV-REQ-007
tags:
  - test-case
  - customer-review
  - enabled
  - eye-icon
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| enabled (before) | false |
| enabled (after) | true |

# Preconditions
- Administrator is logged into the App Builder.
- A Customer Review section with `enabled: false` is open for editing.

# Steps
1. Locate the `eye` icon of the Customer Review section.
2. Click the `eye` icon to enable the section.
3. Save the section.
4. Retrieve the generated JSON configuration.
5. Inspect the `enabled` attribute.

# Expected Result
- The Customer Review section contains an `eye` icon.
- The administrator can enable the Customer Review section using the `eye` icon.
- When `enabled` is set to `true`, the Customer Review section is eligible for rendering in the Mobile App.
- The generated JSON reflects `enabled: true`.

# Notes

# Attachments