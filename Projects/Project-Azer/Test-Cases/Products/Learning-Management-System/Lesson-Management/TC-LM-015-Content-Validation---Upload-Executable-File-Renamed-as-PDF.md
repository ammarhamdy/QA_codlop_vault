---
tc_id: TC-LM-015
title: Content Validation - Upload Executable File Renamed as PDF
priority: High
status: Ready
type: Security
linked_requirement: REQ-002
tags:
  - test-case
  - content-validation
  - security
  - pdf-upload
---

# Test Data
| Field | Value |
| ----- | ----- |
| Lesson Title | Malicious File Test |
| File | backdoor.exe renamed to backdoor.pdf (contains executable payload, MIME: application/x-msdownload) |
| Question Title | Quiz |
| Success Rate | 70 |

# Preconditions
- Admin tries to upload a renamed executable to test system defense.

# Steps
1. Select 'file' lesson type.
2. Upload the renamed executable 'backdoor.pdf'.
3. Attempt to save the lesson.

# Expected Result
- The system performs deep MIME-type validation (content inspection) rather than just extension checking. The upload is blocked with an error: 'Invalid file content: The file is not a valid PDF.'

# Notes

# Attachments
