---
tc_id: TC-CUS-REV-035
title: Verify the Updated Review Text Is Reflected in the JSON and Mobile App
priority: High
status: Draft
type: Regression
linked_requirement: CUS-REV-REQ-015
tags:
  - test-case
  - customer-review
  - review
  - edit
  - rendering
  - regression
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| Review Item review (after) | Outstanding quality and superb support! |
| Review Item customer_name | Sarah Miller |

# Preconditions
- A Customer Review section with a review item whose review text was updated is saved.

# Steps
1. Retrieve the generated JSON configuration.
2. Verify the updated `review` value under `settings.data-object`.
3. Provide the updated configuration to the Mobile App.
4. Open the home screen and observe the review item's review text.

# Expected Result
- The generated JSON reflects the updated `review` value.
- The Mobile App displays the updated review text after the updated configuration is retrieved.

# Notes

# Attachments