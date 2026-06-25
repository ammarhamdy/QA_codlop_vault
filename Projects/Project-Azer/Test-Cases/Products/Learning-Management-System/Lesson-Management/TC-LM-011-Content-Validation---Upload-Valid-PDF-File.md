---
tc_id: TC-LM-011
title: Content Validation - Upload Valid PDF File
priority: High
status: Ready
type: Functional
linked_requirement: REQ-002
tags:
  - test-case
  - content-validation
  - pdf-upload
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Lesson Title | Introduction to Creed |
| Lesson Type | file |
| File | blank.pdf (1.2 MB, valid application/pdf) |
| Question Title | Creed Quiz |
| Success Rate | 70 |

# Preconditions
- User is logged in as an Admin.

# Steps
1. Select 'file' or PDF as the Content Type.
2. Click 'Upload File' and select 'blank.pdf'.
3. Leave 'Description' or 'Text Content' empty.
4. Save the lesson.

# Expected Result
- The lesson is created successfully. The PDF is uploaded, saved in the storage bucket, and is downloadable and viewable by students.

# Notes

# Attachments
