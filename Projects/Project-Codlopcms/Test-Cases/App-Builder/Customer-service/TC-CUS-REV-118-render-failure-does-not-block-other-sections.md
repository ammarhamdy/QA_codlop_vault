---
tc_id: TC-CUS-REV-118
title: Verify a Failure in Customer Review Rendering Does Not Prevent Other Home Screen Sections from Rendering
priority: High
status: Draft
type: Regression
linked_requirement: CUS-REV-REQ-042
tags:
  - test-case
  - customer-review
  - crash-safety
  - other-sections
  - regression
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| Customer Review section | configuration that fails to render |
| Other home screen section | valid Categories section |

# Preconditions
- A home screen configuration contains a Customer Review section that fails to render and a valid Categories section.

# Steps
1. Submit the home screen configuration to the Mobile App.
2. Load the home screen.
3. Observe the rendering of the valid Categories section.

# Expected Result
- A failure in Customer Review rendering does not prevent other valid home screen sections from rendering.
- The valid Categories section is rendered on the home screen.

# Notes

# Attachments