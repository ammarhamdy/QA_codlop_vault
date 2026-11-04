---
tc_id: TC-TND-009
title: Verify File Upload Previews and Acceptance for Valid Images and Documents
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-02-Create-A-Tender.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Valid Tender Image | `tender_cover.png` (PNG format, 2 MB) |
| Valid Document Attachment | `specification_sheet.pdf` (PDF format, 5 MB) |

# Preconditions
1. Tender Owner is authenticated.
2. User is on the Create Tender form (`SCR-TND-01`).

# Steps
1. Navigate to the media upload section of the Create Tender form.
2. Select and upload a valid image file (`tender_cover.png`) as the tender cover image.
3. Observe the cover image upload area.
4. Select and upload a valid PDF document (`specification_sheet.pdf`) in the attachments section.
5. Observe the document attachments area.

# Expected Result
1. Both files are accepted without errors.
2. The system renders an image preview of the uploaded cover image.
3. The system displays a document preview / file badge showing the document name and file size.
4. User has the option to remove or replace the uploaded preview files prior to publishing.

# Notes
- Validates Step 3 of the Main Flow in UF-02.

# Attachments

# Script

---
*Last Updated: 2026-11-04 12:57*
