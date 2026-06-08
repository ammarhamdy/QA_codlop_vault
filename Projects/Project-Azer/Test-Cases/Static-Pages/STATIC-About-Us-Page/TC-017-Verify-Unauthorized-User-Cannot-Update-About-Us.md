---
tc_id: TC_ABOUT_014
title: Verify unauthorized user cannot update About Us content
priority: Critical
status: Ready
type: API
linked_requirement: ABOUT-014
tags:
  - test-case
run_result: pass
---

# Test Data

| Field | Value |
|---------|---------|
| Token | Invalid |

# Preconditions

User not authenticated.

# Steps

1. Send API request.
2. Observe response.

# Expected Result

- Request rejected.
- 401 or 403 returned.

# Notes

Authorization validation.

# Attachments