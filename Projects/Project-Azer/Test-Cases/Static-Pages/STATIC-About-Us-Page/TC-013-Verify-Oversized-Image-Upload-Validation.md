---
tc_id: TC_ABOUT_010
title: Upload image exceeding maximum allowed size
priority: High
status: Ready
type: Functional
linked_requirement: ABOUT-010
tags:
  - test-case
run_result: pass
---

# Test Data

| Field | Value |
|---------|---------|
| Image Size | Above limit |

# Preconditions

Admin logged in.

# Steps

1. Upload oversized image.
2. Save.

# Expected Result

- Validation error shown.
- Upload rejected.

# Notes

Verify server-side validation.

# Attachments