---
tc_id: TC-CUS-REV-110
title: Verify an Invalid Customer Review Configuration Does Not Block Other Home Screen Sections
priority: High
status: Draft
type: Regression
linked_requirement: CUS-REV-REQ-040
tags:
  - test-case
  - customer-review
  - invalid
  - other-sections
  - regression
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| Customer Review section | invalid (missing type and layout) |
| Other home screen section | valid Banner section |

# Preconditions
- A home screen configuration contains an invalid Customer Review section and a valid Banner section.

# Steps
1. Submit the home screen configuration to the Mobile App.
2. Load the home screen.
3. Observe the rendering of the valid Banner section.

# Expected Result
- Invalid Customer Review configuration does not prevent other valid home screen sections from rendering.
- The valid Banner section is rendered on the home screen.

# Notes

# Attachments