---
tc_id: TC-CUS-REV-017
title: Verify Disabling Preserves Configuration and Re-enabling Renders the Section
priority: High
status: Draft
type: Regression
linked_requirement: CUS-REV-REQ-008
tags:
  - test-case
  - customer-review
  - disabled
  - enabled
  - configuration-preserved
  - regression
---

# Test Data
| Field | Value |
| ----- | ----- |
| enabled (step 1) | true |
| enabled (step 2) | false |
| enabled (step 3) | true |
| Review Items | 2 items configured |

# Preconditions
- A Customer Review section with 2 configured review items exists in the App Builder.

# Steps
1. Disable the Customer Review section and save.
2. Retrieve the generated JSON configuration and verify the review data is still present.
3. Re-enable the Customer Review section and save.
4. Provide the configuration to the Mobile App.
5. Observe the home screen rendering.

# Expected Result
- Disabling the section does not remove its existing configuration or review data.
- The review items remain present in the configuration while the section is disabled.
- When the section is re-enabled with `enabled: true`, the configured Customer Review section is eligible for rendering again and is displayed by the Mobile App.

# Notes

# Attachments