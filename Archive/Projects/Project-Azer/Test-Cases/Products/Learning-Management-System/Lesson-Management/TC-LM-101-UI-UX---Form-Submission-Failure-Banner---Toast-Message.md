---
tc_id: TC-LM-101
title: UI/UX - Form Submission Failure Banner / Toast Message
priority: Medium
status: Ready
type: UI
linked_requirement: REQ-002
tags:
  - test-case
  - ui-ux
---

# Test Data
| Field | Value |
| ----- | ----- |
| Fail Condition | Server validation error (e.g. file upload failure) |

# Preconditions
- Admin submits a lesson.

# Steps
1. Attempt to submit a form that triggers a server-side error.
2. Observe the top-right corner or top of the form.

# Expected Result
- A red toast notification or an alert banner appears, clearly stating the error: 'Failed to create lesson. Please check highlighted errors.'

# Notes

# Attachments
