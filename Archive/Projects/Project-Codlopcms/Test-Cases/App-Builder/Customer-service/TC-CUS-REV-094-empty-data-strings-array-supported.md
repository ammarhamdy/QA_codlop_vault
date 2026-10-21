---
tc_id: TC-CUS-REV-094
title: Verify an Empty settings.data-strings Array Is Supported Without Affecting Rendering
priority: Low
status: Draft
type: Regression
linked_requirement: CUS-REV-REQ-035
tags:
  - test-case
  - customer-review
  - data-strings
  - empty
  - rendering
  - regression
---

# Test Data
| Field | Value |
| ----- | ----- |
| settings.data-strings | [] (empty array) |
| settings.data-object | 1 review item configured |

# Preconditions
- A Customer Review section with `settings.data-strings: []` and at least one review item is saved.
- The mobile application has been refreshed with the latest configuration.

# Steps
1. Retrieve the generated JSON configuration.
2. Verify the `settings.data-strings` attribute is an empty array.
3. Open the mobile application and navigate to the home screen.
4. Observe the Customer Review section rendering.

# Expected Result
- An empty `data-strings` array is supported.
- The generated JSON preserves the empty `data-strings` array.
- The Mobile App can process the `data-strings` attribute without preventing the Customer Review section from rendering.

# Notes

# Attachments