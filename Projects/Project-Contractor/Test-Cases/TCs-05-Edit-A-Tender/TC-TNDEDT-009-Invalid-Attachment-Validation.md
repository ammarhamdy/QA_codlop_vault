---
tc_id: TC-TNDEDT-009
title: Verify File Validation and Error Handling When Uploading Invalid Attachment During Edit
priority: High
status:
  - completed
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-05-Edit-A-Tender.md
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Oversized File | `heavy_video.mp4` (> maximum file limit) |
| Unsupported Format File | `installer_script.exe` |
| Expected System Feedback | File validation error message highlighting the invalid attachment |

# Preconditions
1. Tender Owner is authenticated.
2. User is on the Edit Tender form for an unawarded tender.

# Steps
1. Navigate to the attachments upload section on the Edit Tender form.
2. Attempt to upload an unsupported format file (`installer_script.exe`).
3. Attempt to upload an oversized file (`heavy_video.mp4`).
4. Click "Save Changes" if submission is enabled.
5. Observe system response and file indicators.

# Expected Result
1. The system blocks the invalid attachment upload.
2. An actionable file error message is displayed (e.g., file format unsupported or exceeds size limit).
3. The invalid attachment is highlighted for removal or correction.
4. Form submission is blocked, and the user resumes at Step 3 with existing valid data intact.

# Notes
- Directly validates alternative flow E4 in UF-05.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:16*
