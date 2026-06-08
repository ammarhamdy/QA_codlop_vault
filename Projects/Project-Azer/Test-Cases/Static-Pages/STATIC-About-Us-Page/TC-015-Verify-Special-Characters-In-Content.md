---
tc_id: TC_ABOUT_012
title: Verify special characters in content
priority: Medium
status: Ready
type: Functional
linked_requirement: ABOUT-012
tags:
  - test-case
run_result: pass
---

# Test Data

| Field | Value |
|---------|---------|
| Content | !@#$%^&*() |

# Preconditions

Admin logged in.

# Steps

1. Enter special characters.
2. Save.

# Expected Result

- Content handled correctly.
- No application errors.

# Notes

Check sanitization.

# Attachments