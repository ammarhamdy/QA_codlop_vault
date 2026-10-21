---
tc_id: TC-PROD-CONF-021
title: Verify Unsupported Highlight Modes Cannot Be Saved
priority: Low
status:
  - closed
type: Validation
linked_requirement: PROD-REQ-024
tags:
  - test-case
  - configuration
  - highlight
  - validation
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| highlight | unsupported_badge |

# Preconditions
- Admin is logged into the Admin Panel.
- A Product Section is open for editing.

# Steps
1. Attempt to enter or select an unsupported highlight mode.
2. Attempt to save.

# Expected Result
- The Admin Panel rejects the unsupported value.
- A validation error is displayed.
- The section is not saved with the invalid highlight mode.

# Notes

# Attachments
