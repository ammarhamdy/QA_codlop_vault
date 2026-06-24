---
tc_id: TC-LM-104
title: UI/UX - File Upload Progress Bar for PDF & Images
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
| File | large_file.pdf (15 MB) |

# Preconditions
- Admin uploads a large file on a simulated slow internet connection.

# Steps
1. Select a 15MB file for upload.
2. Click 'Save' and monitor the upload area.

# Expected Result
- A clear, dynamic progress bar appears indicating upload percentage (e.g., 'Uploading: 45%'), transitioning to a success checkmark upon completion.

# Notes

# Attachments
