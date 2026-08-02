---
tc_id: TC-A-Prop-042
title: Verify uploading optional property deed document with PDF format validation
priority:
  - High
  - Medium
  - Low
status:
  - Draft
  - Ready
type:
  - Functional
  - Regression
  - API
linked_requirement:
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
|       |       |
|       |       |

# Preconditions
-Admin on add broker form on Images &Attachments step.
# Steps
1. Upload a valid PDF property deed.
2. Verify it is uploaded successfully.
3. Try to upload the property deed using an unsupported file format
# Expected Result
-System should accept and upload the property deed only in **PDF** format and reject unsupported file formats with an appropriate validation message.
# Notes

# Attachments
