---
tc_id: TC-PROD-VAL-002
title: Verify Validation Error Messages Are Clear and Identify the Specific Field
priority: High
status: Ready
type: Validation
linked_requirement: PROD-REQ-032
tags:
  - test-case
  - validation
  - error-messages
---

# Test Data
| Field | Value |
| ----- | ----- |
| section_key | (not selected) |

# Preconditions
- Admin is logged into the Admin Panel.
- A Product Section is open for editing.

# Steps
1. Leave the layout/section_key field unselected.
2. Attempt to publish the section.

# Expected Result
- Publishing is blocked.
- A clear validation error is shown: "Layout selection is required." (or equivalent).
- The error identifies the specific field that is invalid/missing.

# Notes
- Repeat for each required field individually.

# Attachments
