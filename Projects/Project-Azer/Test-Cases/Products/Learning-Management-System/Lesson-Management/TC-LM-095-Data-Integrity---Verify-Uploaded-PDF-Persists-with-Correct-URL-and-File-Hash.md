---
tc_id: TC-LM-095
title: Data Integrity - Verify Uploaded PDF Persists with Correct URL and File Hash
priority: High
status: Ready
type: Functional
linked_requirement: REQ-002
tags:
  - test-case
  - data-integrity
---

# Test Data
| Field | Value |
| ----- | ----- |
| PDF File | blank.pdf |

# Preconditions
- Admin uploads a PDF file.

# Steps
1. Upload 'blank.pdf' and save the lesson.
2. Download the PDF from the generated lesson URL.
3. Verify the file's MD5/SHA256 checksum against the original file.

# Expected Result
- The downloaded file is perfectly intact, and its cryptographic hash matches the original file exactly.

# Notes

# Attachments
