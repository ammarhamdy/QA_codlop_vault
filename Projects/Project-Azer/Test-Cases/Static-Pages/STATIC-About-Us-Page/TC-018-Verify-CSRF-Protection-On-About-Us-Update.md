---
tc_id: TC_ABOUT_015
title: Verify CSRF protection on update endpoint
priority: Critical
status: Ready
type: API
linked_requirement: ABOUT-015
tags:
  - test-case
---

# Test Data

| Field | Value |
|---------|---------|
| _token | Missing |

# Preconditions

Authenticated user.

# Steps

1. Remove CSRF token.
2. Submit request.

# Expected Result

- Request rejected.
- Proper security response returned.

# Notes

Security validation.

# Attachments