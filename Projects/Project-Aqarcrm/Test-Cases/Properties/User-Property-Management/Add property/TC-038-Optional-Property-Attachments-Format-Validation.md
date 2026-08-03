---
tc_id: TC-U-Prop-038
title: Verify uploading optional property attachments with supported file formats
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement: US-009-Properties
tags:
  - test-case
run_result: Pass
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-User is logged in as a Broker on add property form on Images &Attachments step.
# Steps
1. Upload a valid PDF, Word, and Excel file.  
2. Verify the files are uploaded successfully.  
3. Try to upload a file with an unsupported format.
# Expected Result
-System should accept and upload supported file formats successfully and reject unsupported file formats with an appropriate validation message.
# Notes

# Attachments
