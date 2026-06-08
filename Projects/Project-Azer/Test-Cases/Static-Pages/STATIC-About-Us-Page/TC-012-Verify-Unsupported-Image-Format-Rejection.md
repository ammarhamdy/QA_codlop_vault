---
tc_id: TC_ABOUT_009
title: Upload unsupported image format
priority: High
status: Ready
type: Functional
linked_requirement: ABOUT-009
tags:
  - test-case
run_result: pass
---

# Test Data

| Field | Value |
|---------|---------|
| File | malware.exe |

# Preconditions

Admin logged in.

# Steps

1. Select unsupported file.
2. Save.

# Expected Result

- Upload blocked.
- Proper validation error displayed.

# Notes

Security validation.

# Attachments