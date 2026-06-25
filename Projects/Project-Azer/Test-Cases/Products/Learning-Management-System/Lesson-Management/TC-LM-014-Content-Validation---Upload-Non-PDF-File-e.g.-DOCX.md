---
tc_id: TC-LM-014
title: Content Validation - Upload Non-PDF File (e.g. DOCX)
priority: High
status: Ready
type: Negative
linked_requirement: REQ-002
tags:
  - test-case
  - content-validation
  - negative
  - pdf-upload
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Lesson Title | Arabic grammar |
| File | grammar.docx (Microsoft Word Document) |
| Question Title | Quiz |
| Success Rate | 70 |

# Preconditions
- Admin has a document named 'grammar.docx'.

# Steps
1. Select 'file' lesson type.
2. Try uploading 'grammar.docx'.
3. Fill in required fields and submit.

# Expected Result
- The system validates the file extension and MIME type, blocks upload, and shows an error: 'Only PDF files are allowed for lesson file content.'

# Notes

# Attachments
