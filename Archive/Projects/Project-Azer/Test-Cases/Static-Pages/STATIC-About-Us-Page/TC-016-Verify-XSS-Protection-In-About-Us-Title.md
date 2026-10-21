---
tc_id: TC_ABOUT_013
title: Verify XSS protection in title field
priority: Critical
status: Ready
type: Security
linked_requirement: ABOUT-013
tags:
  - test-case
---

# Test Data

| Field | Value |
|---------|---------|
| Title | <script>alert(1)</script> |

# Preconditions

Admin logged in.

# Steps

1. Enter malicious script.
2. Save.
3. Open website.

# Expected Result

- Script not executed.
- Input sanitized or rejected.

# Notes

Security test.

# Attachments