---
tc_id: TC-CUS-REV-128
title: Verify Refresh Uses the Latest Configuration Without Creating Duplicate Customer Review Items
priority: High
status: Draft
type: Regression
linked_requirement: CUS-REV-REQ-043
tags:
  - test-case
  - customer-review
  - refresh
  - duplicates
  - regression
---

# Test Data
| Field | Value |
| ----- | ----- |
| Review Items configured | 2 items |

# Preconditions
- A Customer Review section with 2 review items is rendered in the Mobile App.
- The configuration is unchanged.

# Steps
1. Note the number of review items displayed in the Mobile App.
2. Refresh the mobile application configuration.
3. Note the number of review items displayed after refresh.
4. Repeat the refresh once more.

# Expected Result
- The Mobile App uses the latest valid Customer Review configuration after refresh.
- Refreshing the configuration does not create duplicate customer review items.
- The Customer Review section displays exactly 2 review items after each refresh.

# Notes

# Attachments