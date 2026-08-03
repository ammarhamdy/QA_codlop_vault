---
tc_id: TC-A-Prop-039
title: Verify uploading optional property deed document with PDF format validation
priority:
  - High
status:
  - Ready
type:
  - Functional
linked_requirement:
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
1. Upload a valid PDF property deed.
2. Verify it is uploaded successfully.
3. Try to upload the property deed using an unsupported file format
# Expected Result
-System should accept and upload the property deed only in **PDF** format and reject unsupported file formats with an appropriate validation message.
# Notes

# Attachments
