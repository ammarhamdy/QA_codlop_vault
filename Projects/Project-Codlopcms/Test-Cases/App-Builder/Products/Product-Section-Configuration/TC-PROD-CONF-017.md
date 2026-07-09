---
tc_id: TC-PROD-CONF-017
title: Verify Invalid Hex Color Values Are Rejected at Input
priority: Medium
status: Ready
type: Validation
linked_requirement: PROD-REQ-012
tags:
  - test-case
  - configuration
  - colors
  - validation
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| Background | #GGGGGG |
| titleColor | 123456 |
| textColor | #fff |

# Preconditions
- Admin is logged into the Admin Panel.
- A Product Section is open for editing.

# Steps
1. Attempt to enter invalid hex color values in the background, titleColor, and textColor fields.
2. Attempt to save.

# Expected Result
- Invalid hex values are rejected at input time.
- A validation error is shown for each invalid field.
- The section is not saved with invalid color values.

# Notes
- Valid hex format is "#" followed by 6 hex characters (0-9, A-F) or 3 hex characters for shorthand.
- Requirement specifies "#ffffff" as the expected format.

# Attachments
