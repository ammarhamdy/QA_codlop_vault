---
tc_id: TC-CART-PayD-011
title: Verify required recipient information fields
priority:
  - High
status:
  - Draft
type:
  - Functional
linked_requirement: US-007-Bharqan-CART-Payment
tags:
  - test-case
---

# Test Data
| Field | Value           |
| ----- | --------------- |
| Name  | (empty)         |
| Phone | 01119781231     |
| Email | fatma@gmail.com |

# Preconditions
-Pickup by Another Person is enabled.
# Steps
1. Leave Name field empty.
2. Fill other fields & save.
# Expected Result
-Validation message displayed "Name field is required".
# Notes

# Attachments
