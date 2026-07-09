---
tc_id: TC-PROD-CONF-016
title: Verify Unsupported Shadow Values Cannot Be Saved
priority: Low
status: Ready
type: Validation
linked_requirement: PROD-REQ-014
tags:
  - test-case
  - configuration
  - shadow
  - validation
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| shadow | extreme_drop_shadow |

# Preconditions
- Admin is logged into the Admin Panel.
- A Product Section is open for editing.

# Steps
1. Attempt to enter or select an unsupported shadow value (e.g., "extreme_drop_shadow").
2. Attempt to save.

# Expected Result
- The Admin Panel rejects the unsupported value.
- A validation error is displayed.
- The section is not saved with the invalid value.

# Notes
- Implementation should use a closed-list dropdown/selector to prevent manual entry of unsupported values.

# Attachments
