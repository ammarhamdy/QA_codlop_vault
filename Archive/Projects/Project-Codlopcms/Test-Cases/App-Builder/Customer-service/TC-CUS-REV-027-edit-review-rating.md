---
tc_id: TC-CUS-REV-027
title: Edit the Rating of an Existing Customer Review Item
priority: High
status: Draft
type: Functional
linked_requirement: CUS-REV-REQ-013
tags:
  - test-case
  - customer-review
  - rate
  - edit
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| Review Item rate (before) | 5 |
| Review Item rate (after) | 4 |

# Preconditions
- Administrator is logged into the App Builder.
- A Customer Review section with a review item rated 5 is open for editing.

# Steps
1. Locate the existing customer review item.
2. Edit the rating from 5 to 4.
3. Save the section.
4. Retrieve the generated JSON configuration.
5. Inspect the `rate` attribute of the review item under `settings.data-object`.

# Expected Result
- The administrator can edit the rating of an existing customer review.
- The updated rating is stored in the corresponding review item.
- The generated JSON reflects the updated `rate` value (4) under `settings.data-object`.

# Notes

# Attachments