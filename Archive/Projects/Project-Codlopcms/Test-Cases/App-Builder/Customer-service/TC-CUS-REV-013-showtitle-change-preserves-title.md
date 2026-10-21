---
tc_id: TC-CUS-REV-013
title: Verify Changing showTitle Does Not Remove or Modify the Configured Title
priority: Medium
status: Draft
type: Functional
linked_requirement: CUS-REV-REQ-006
tags:
  - test-case
  - customer-review
  - showTitle
  - title
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| title (before) | Customer Reviews |
| settings.showTitle (before) | true |
| settings.showTitle (after) | false |

# Preconditions
- Administrator is logged into the App Builder.
- A Customer Review section with title "Customer Reviews" and `settings.showTitle: true` is open for editing.

# Steps
1. Note the configured `title` value.
2. Set `settings.showTitle` to `false`.
3. Save the section.
4. Retrieve the generated JSON configuration.
5. Inspect the `title` and `settings.showTitle` attributes.

# Expected Result
- Changing `showTitle` does not remove or modify the configured `title` value.
- The generated JSON contains `settings.showTitle: false` and still contains `title: "Customer Reviews"`.

# Notes

# Attachments