---
tc_id: TC-PROD-CARD-002
title: Verify Admin Can Select All Five Supported Product Card Styles
priority: High
status:
  - completed
type: Functional
linked_requirement: PROD-REQ-010
tags:
  - test-case
  - card-style
  - selection
  - positive
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Style 1 | type_one |
| Style 2 | type_two |
| Style 3 | type_three |
| Style 4 | type_four |
| Style 5 | type_five |

# Preconditions
- Admin is logged into the Admin Panel.

# Steps
1. Create a Product Section and set productCardStyle to `type_one`. Save.
2. Edit and change to `type_two`. Save.
3. Edit and change to `type_three`. Save.
4. Edit and change to `type_four`. Save.
5. Edit and change to `type_five`. Save.

# Expected Result
- Each of the five supported card styles can be selected and saved.
- No validation errors occur for any supported value.

# Notes

# Attachments
