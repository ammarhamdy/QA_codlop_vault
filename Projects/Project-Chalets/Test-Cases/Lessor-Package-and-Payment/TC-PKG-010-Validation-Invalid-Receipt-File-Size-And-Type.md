---
tc_id: TC-PKG-010
title: Verify File Size and Type Validations on Receipt Upload
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Package-and-Payment-Method/Package-and-Payment-Method.md
tags:
  - test-case
---

# Test Data
| Test File Name | File Size | MIME / Format | Expected Result |
| -------------- | --------- | ------------- | --------------- |
| `receipt_valid.jpg` | 2.1 MB | Image JPG | Accepted |
| `receipt_valid.png` | 1.8 MB | Image PNG | Accepted |
| `receipt_valid.pdf` | 9.9 MB | Document PDF | Accepted |
| `receipt_oversized.pdf` | 10.5 MB | Document PDF | Rejected (File size > 10 MB) |
| `receipt_invalid.docx` | 500 KB | Word Document | Rejected (Unsupported format) |
| `receipt_invalid.exe` | 1.2 MB | Binary Executable | Rejected (Disallowed format) |

# Preconditions
1. Lessor is on the bank transfer receipt upload screen.

# Steps
1. Attempt to upload `receipt_invalid.docx` or `receipt_invalid.exe`.
2. Observe file picker filter and validation error.
3. Attempt to upload `receipt_oversized.pdf` (> 10 MB).
4. Observe upload error.
5. Upload valid file `receipt_valid.png` ($\le$ 10 MB).
6. Observe successful file preview and attachment.

# Expected Result
1. The upload mechanism restricts file formats strictly to JPG, PNG, and PDF.
2. Files with invalid extensions/MIME types are rejected with an unsupported file format message.
3. Files exceeding 10 MB are rejected with a file size limit message.
4. Valid files up to 10 MB of allowed types are accepted and ready for submission.

# Notes
- Requirement: UF-43 Main Flow Step 3 & Error Flow E3.

# Attachments

# Script

---
*Last Updated: 2026-10-21 14:40*
