---
tc_id: TC-CUS-REV-120
title: Verify the Section Enabled State Change Is Reflected After Refresh
priority: High
status: Draft
type: Regression
linked_requirement: CUS-REV-REQ-043
tags:
  - test-case
  - customer-review
  - refresh
  - enabled
  - regression
---

# Test Data
| Field | Value |
| ----- | ----- |
| enabled (before) | true |
| enabled (after) | false |

# Preconditions
- A Customer Review section with `enabled: true` is rendered in the Mobile App.
- The section has been disabled (`enabled: false`) in the App Builder and saved.

# Steps
1. Note the Customer Review section's presence on the home screen.
2. Refresh the mobile application configuration.
3. Observe the Customer Review section after refresh.
4. Re-enable the section, refresh again, and observe.

# Expected Result
- Changes to the section enabled state are reflected after refresh.
- After refresh, the disabled section is no longer rendered.
- After re-enabling and refreshing, the section is rendered again.

# Notes

# Attachments