---
tc_id: TC-TND-007
title: Verify File Validation and Error Handling When Uploading Unsupported File Formats
priority: High
status:
  - completed
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-02-Create-A-Tender.md
tags:
  - test-case
run_result: pass
web_run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Invalid Cover Image File | `sample_malware.exe` or `archive.zip` |
| Invalid Document Attachment | `script.sh` or `data.bin` |
| Expected Error Message | `"File format unsupported or file exceeds maximum size limit."` |

# Preconditions
1. Tender Owner is authenticated.
2. User is on the Create Tender form (`SCR-TND-01`).

# Steps
1. Attempt to upload an executable or unsupported file format (`sample_malware.exe`) into the cover image upload area.
2. Observe immediate client-side validation response if present.
3. Fill mandatory fields with valid data.
4. Attempt to attach an unsupported file type (`script.sh`) in the document attachments section.
5. Click "Publish Tender" if button is clickable.

# Expected Result
1. The system blocks the upload of unsupported file extensions/MIME types.
2. The file validation error message `"File format unsupported or file exceeds maximum size limit."` is displayed.
3. The unsupported file is rejected and not attached to the tender.
4. Tender publication is prevented while invalid files are present, resuming at Step 3.

# Notes
- Directly validates alternative flow E3 in UF-02.

# Attachments

# Script

---
*Last Updated: 2026-11-04 12:57*
