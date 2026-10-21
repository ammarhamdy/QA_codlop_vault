---
tc_id: TC-CUS-REV-029
title: Verify the Updated Rating Is Reflected in the JSON and Mobile App
priority: High
status: Draft
type: Regression
linked_requirement: CUS-REV-REQ-013
tags:
  - test-case
  - customer-review
  - rate
  - edit
  - rendering
  - regression
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| Review Item rate (after) | 4 |
| Review Item customer_name | Sarah Miller |

# Preconditions
- A Customer Review section with a review item whose rating was updated to 4 is saved.

# Steps
1. Retrieve the generated JSON configuration.
2. Verify the updated `rate` value under `settings.data-object`.
3. Provide the updated configuration to the Mobile App.
4. Open the home screen and observe the review item's rating.

# Expected Result
- The generated JSON reflects the updated `rate` value (4).
- The Mobile App displays the updated rating after the updated configuration is retrieved.

# Notes

# Attachments