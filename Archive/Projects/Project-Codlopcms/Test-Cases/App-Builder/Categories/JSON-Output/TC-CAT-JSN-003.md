---
tc_id: TC-CAT-JSN-003
title: Invalid configuration is blocked from publishing with clear error
priority: High
status:
  - completed
type: API
linked_requirement: CAT-REQ-036
tags:
  - test-case
  - json
  - backend
  - validation
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Layout | (missing — invalid state) |

# Preconditions
- A Categories section exists but has an invalid/missing required field (e.g., no layout selected).

# Steps
1. Attempt to publish or save the section without a required field.
2. Observe the Admin Panel response.
3. Inspect the generated JSON endpoint — verify no updated JSON is served.

# Expected Result
- Publishing is blocked with a clear error message indicating which field is missing or invalid.
- The generated JSON available to the mobile app is NOT updated with the invalid configuration.
- The previous valid JSON (if any) remains intact.

# Notes
# Attachments
