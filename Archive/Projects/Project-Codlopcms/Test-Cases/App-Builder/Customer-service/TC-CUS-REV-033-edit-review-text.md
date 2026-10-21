---
tc_id: TC-CUS-REV-033
title: Edit the Review Text of an Existing Customer Review Item
priority: High
status: Draft
type: Functional
linked_requirement: CUS-REV-REQ-015
tags:
  - test-case
  - customer-review
  - review
  - edit
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| Review Item review (before) | Excellent product, highly recommended! |
| Review Item review (after) | Outstanding quality and superb support! |

# Preconditions
- Administrator is logged into the App Builder.
- A Customer Review section with a review item containing the review text above is open for editing.

# Steps
1. Locate the existing customer review item.
2. Edit the review text from "Excellent product, highly recommended!" to "Outstanding quality and superb support!".
3. Save the section.
4. Retrieve the generated JSON configuration.
5. Inspect the `review` attribute of the review item under `settings.data-object`.

# Expected Result
- The administrator can edit the review text of an existing customer review.
- The updated review text is stored in the corresponding review item.
- The generated JSON reflects the updated `review` value under `settings.data-object`.

# Notes

# Attachments