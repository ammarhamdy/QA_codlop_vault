---
tc_id: TC-TND-008
title: Verify File Size Validation and Error Handling When Upload Exceeds Maximum Size Limit
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-02-Create-A-Tender.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Oversized Image File | `large_cover_photo.jpg` (exceeding maximum image limit, e.g., > 10MB) |
| Oversized Attachment | `large_drawing.pdf` (exceeding maximum document limit, e.g., > 25MB) |
| Expected Error Message | `"File format unsupported or file exceeds maximum size limit."` |

# Preconditions
1. Tender Owner is authenticated.
2. User is on the Create Tender form (`SCR-TND-01`).

# Steps
1. Attempt to upload an image file (`large_cover_photo.jpg`) that exceeds the configured file size limit into the cover image upload field.
2. Observe system response and error message.
3. Attempt to upload a document attachment (`large_drawing.pdf`) that exceeds the allowable file size threshold.
4. Observe system response.
5. Attempt to click "Publish Tender".

# Expected Result
1. The system detects that the uploaded file exceeds the maximum permitted size.
2. The error message `"File format unsupported or file exceeds maximum size limit."` is displayed.
3. The oversized file is not accepted or staged for submission.
4. Form submission is prevented until the oversized file is removed or replaced with an acceptable file.

# Notes
- Directly validates alternative flow E3 in UF-02.

# Attachments

# Script

---
*Last Updated: 2026-11-04 12:57*
