---
tc_id: TC_ABOUT_007
title: Save About Section with empty title
priority: High
status: Ready
type: Functional
linked_requirement: ABOUT-007
tags:
  - test-case
run_result: pass
---

# Test Data

| Field | Value |
|---------|---------|
| Title | Empty |

# Preconditions

Admin logged in.

# Steps

1. Clear title field.
2. Save.

# Expected Result

- Validation error displayed.
- Data not saved.

# Notes

Verify API validation response.

# Attachments