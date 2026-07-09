---
tc_id: TC-CAT-ERR-002
title: Empty category list hides the section
priority: Medium
status:
  - completed
type: Functional
linked_requirement: CAT-REQ-028, CAT-REQ-041
tags:
  - test-case
  - mobile
  - error-handling
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| data-strings | [] (empty array) |
| data-object | [] (empty array) |

# Preconditions
- A Categories section is configured and enabled but has no categories selected.

# Steps
1. Publish the section with both data-strings and data-object empty.
2. Load the Home screen on the mobile app.
3. Observe rendering behavior.

# Expected Result
- The section is treated as having no content.
- Recommended behavior: the section is hidden from the Home screen.
- No crash or error is displayed to the user.

# Notes
Exact behavior (hide vs. render empty) to be confirmed (see spec Open Questions).
# Attachments
