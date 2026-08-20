---
tc_id: TC-CUS-REV-127
title: Verify Section Title Visibility Changes Are Reflected After Refresh
priority: High
status: Draft
type: Regression
linked_requirement: CUS-REV-REQ-043
tags:
  - test-case
  - customer-review
  - refresh
  - showTitle
  - regression
---

# Test Data
| Field | Value |
| ----- | ----- |
| title | Customer Reviews |
| settings.showTitle (before) | true |
| settings.showTitle (after) | false |

# Preconditions
- A Customer Review section with `settings.showTitle: true` is rendered in the Mobile App and its title is displayed.
- The `settings.showTitle` value has been changed to `false` in the App Builder and saved.

# Steps
1. Note the title visibility in the Mobile App.
2. Refresh the mobile application configuration.
3. Observe the title visibility after refresh.

# Expected Result
- Changes to section title visibility are reflected after refresh.
- After refresh, the section title is no longer displayed while the configured `title` value remains in the configuration.

# Notes

# Attachments