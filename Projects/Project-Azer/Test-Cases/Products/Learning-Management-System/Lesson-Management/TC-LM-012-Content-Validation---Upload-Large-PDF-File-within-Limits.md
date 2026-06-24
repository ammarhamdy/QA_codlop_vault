---
tc_id: TC-LM-012
title: Content Validation - Upload Large PDF File within Limits
priority: Medium
status: Ready
type: Boundary
linked_requirement: REQ-002
tags:
  - test-case
  - content-validation
  - boundary
  - pdf-upload
---

# Test Data
| Field | Value |
| ----- | ----- |
| Lesson Title | Detailed Fiqh Studies |
| Lesson Type | file |
| File | large_fiqh.pdf (19.8 MB, valid application/pdf, limit: 20MB) |
| Question Title | Quiz |
| Success Rate | 70 |

# Preconditions
- Admin is on the creation page. File upload limit is configured to 20MB.

# Steps
1. Upload 'large_fiqh.pdf' (19.8 MB).
2. Populate required quiz fields.
3. Click 'Save' and monitor upload status.

# Expected Result
- The file is uploaded successfully (progress bar updates correctly). Lesson is created with no timeout or connection error.

# Notes

# Attachments
