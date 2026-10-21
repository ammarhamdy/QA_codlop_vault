---
tc_id: TC-CAT-RND-010
title: Disabled section excluded with no layout space reserved
priority: Medium
status:
  - completed
type: Functional
linked_requirement: CAT-REQ-034
tags:
  - test-case
  - mobile
  - rendering
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Section A (other type) | enabled above Categories |
| Categories section | disabled (enabled: false) |
| Section B (other type) | enabled below Categories |

# Preconditions
- Home screen has three sections in order: Section A (other type, enabled), Categories (disabled), Section B (other type, enabled).

# Steps
1. Load the Home screen on the mobile app.
2. Observe the spacing between Section A and Section B.

# Expected Result
- Section A renders normally.
- The disabled Categories section does not render and reserves no layout space.
- Section B renders directly after Section A with no gap.
- The layout appears as if the Categories section was never in the configuration.

# Notes
# Attachments
