---
tc_id: TC-LM-103
title: UI/UX - Warning on Navigating Away with Unsaved Changes
priority: High
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
| Unsaved Work | Half-populated quiz |

# Preconditions
- Admin has filled out some fields in the lesson form.

# Steps
1. Type some content in 'Lesson Title'.
2. Click the browser's Back button or navigation links (e.g., sidebar) without saving.

# Expected Result
- A confirmation modal pops up: 'You have unsaved changes. Are you sure you want to leave?' with 'Leave' and 'Stay' options.

# Notes

# Attachments
