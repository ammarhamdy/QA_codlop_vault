---
tc_id: TC_ABOUT_008
title: Save About Section with empty content
priority: High
status: Ready
type: Functional
linked_requirement: ABOUT-008
tags:
  - test-case
run_result: pass
---

# Test Data

| Field | Value |
|---------|---------|
| Content | Empty |

# Preconditions

Admin logged in.

# Steps

1. Clear content field.
2. Save.

# Expected Result

- Validation message displayed.
- Save operation rejected.

# Notes

Verify backend validation.

# Attachments