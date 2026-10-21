---
tc_id: TC-CUS-REV-021
title: Configure the Rating for a Customer Review Item
priority: High
status: Draft
type: Functional
linked_requirement: CUS-REV-REQ-010
tags:
  - test-case
  - customer-review
  - rate
  - configuration
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| Review Item rate | 5 |

# Preconditions
- Administrator is logged into the App Builder.
- A Customer Review section is open for editing.

# Steps
1. Add a new customer review item.
2. Set the review item rating to 5.
3. Save the section.
4. Retrieve the generated JSON configuration.
5. Inspect the `rate` attribute of the review item under `settings.data-object`.

# Expected Result
- Each customer review item contains a `rate` attribute.
- The configured rating is stored in the corresponding review item.
- The generated JSON contains the configured rating (5) under `settings.data-object`.

# Notes

# Attachments