---
tc_id: TC-CUS-REV-007
title: Verify Section Layout Is Fixed to "slider-reviews" in the JSON Configuration
priority: High
status: Draft
type: Functional
linked_requirement: CUS-REV-REQ-004
tags:
  - test-case
  - customer-review
  - layout
  - json
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| Expected `layout` value | slider-reviews |

# Preconditions
- Administrator is logged into the App Builder.
- A Customer Review section has been created.

# Steps
1. Create a Customer Review section in the App Builder.
2. Retrieve the generated JSON configuration.
3. Inspect the `layout` attribute of the Customer Review section.
4. Provide the configuration to the Mobile App and observe the rendered layout.

# Expected Result
- The Customer Review section contains a `layout` attribute.
- The `layout` value is always `slider-reviews`.
- The generated JSON contains `"layout": "slider-reviews"` for the Customer Review section.
- The Mobile App renders the Customer Review section using the `slider-reviews` layout.

# Notes

# Attachments