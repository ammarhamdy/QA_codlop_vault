---
tc_id: TC-CUS-REV-025
title: Configure the Review Text for a Review Item
priority: High
status: Draft
type: Functional
linked_requirement: CUS-REV-REQ-012
tags:
  - test-case
  - customer-review
  - review
  - configuration
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| Review Item review | Excellent product, highly recommended! |

# Preconditions
- Administrator is logged into the App Builder.
- A Customer Review section is open for editing.

# Steps
1. Add a new customer review item.
2. Enter the review text "Excellent product, highly recommended!".
3. Save the section.
4. Retrieve the generated JSON configuration.

# Expected Result
- Each customer review item contains a `review` attribute.
- The administrator can enter or modify the review text.
- The configured review text is stored in the corresponding review item.
- The generated JSON contains the configured review text under `settings.data-object`.

# Notes

# Attachments