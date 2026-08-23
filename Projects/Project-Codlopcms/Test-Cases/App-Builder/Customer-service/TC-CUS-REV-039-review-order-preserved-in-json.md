---
tc_id: TC-CUS-REV-039
title: Verify Customer Review Order Is Preserved in the JSON Configuration
priority: Medium
status: Draft
type: API
linked_requirement: CUS-REV-REQ-017
tags:
  - test-case
  - customer-review
  - order
  - json
  - api
  - positive
---

# Test Data
| Field | Value |
| ----- | ----- |
| Review Item 1 | Sarah M. (rate 5) |
| Review Item 2 | John D. (rate 4) |
| Review Item 3 | Priya K. (rate 5) |

# Preconditions
- Administrator is logged into the App Builder.
- A Customer Review section has three review items ordered as listed above and has been saved.

# Steps
1. Define the order of the three review items.
2. Save the section.
3. Retrieve the generated JSON configuration.
4. Inspect the order of items in `settings.data-object`.

# Expected Result
- The configured order is preserved in `settings.data-object`.
- The generated JSON maintains the configured customer review order (Sarah M., John D., Priya K.).

# Notes

# Attachments