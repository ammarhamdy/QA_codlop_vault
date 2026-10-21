---
tc_id: TC-CUS-REV-032
title: Verify the Updated Customer Name Is Reflected in the JSON and Mobile App
priority: High
status: Draft
type: Regression
linked_requirement: CUS-REV-REQ-014
tags:
  - test-case
  - customer-review
  - customer_name
  - edit
  - rendering
  - regression
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| Review Item customer_name (after) | Sarah Miller |
| Review Item rate | 5 |

# Preconditions
- A Customer Review section with a review item whose customer name was updated to "Sarah Miller" is saved.

# Steps
1. Retrieve the generated JSON configuration.
2. Verify the updated `customer_name` value under `settings.data-object`.
3. Provide the updated configuration to the Mobile App.
4. Open the home screen and observe the review item's customer name.

# Expected Result
- The generated JSON reflects the updated `customer_name` value ("Sarah Miller").
- The Mobile App displays the updated customer name after the updated configuration is retrieved.

# Notes

# Attachments