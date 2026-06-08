---
tc_id: TC_ABOUT_011
title: Verify Arabic text saves correctly
priority: High
status: Ready
type: Regression
linked_requirement: ABOUT-011
tags:
  - test-case
run_result: pass
---

# Test Data

| Field | Value |
|---------|---------|
| Title | من نحن |
| Content | نص عربي |

# Preconditions

Admin logged in.

# Steps

1. Enter Arabic content.
2. Save.
3. Refresh page.

# Expected Result

- Arabic text stored correctly.
- No encoding issues.

# Notes

Verify UTF-8 support.

# Attachments