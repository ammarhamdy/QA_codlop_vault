---
tc_id: TC-LM-105
title: UI/UX - Loading Spinner & Button Disabled State During Submission
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
| Action | Submit form |

# Preconditions
- Admin clicks Save on a valid form.

# Steps
1. Click the 'Save' button.
2. Observe the button during the server roundtrip.

# Expected Result
- The button displays a loading spinner, its text changes to 'Saving...', and it becomes unclickable to prevent duplicate form submissions.

# Notes

# Attachments
