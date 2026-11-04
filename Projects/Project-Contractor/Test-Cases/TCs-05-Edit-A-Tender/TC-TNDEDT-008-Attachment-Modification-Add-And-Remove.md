---
tc_id: TC-TNDEDT-008
title: Verify Adding New Valid Attachments and Removing Existing Attachments
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-05-Edit-A-Tender.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Tender ID | `TND-208` |
| Existing Attachment to Remove | `old_draft_spec.pdf` |
| New Valid Attachment to Add | `revised_structural_spec.pdf` (valid PDF, 4 MB) |

# Preconditions
1. Tender Owner is authenticated.
2. Tender `TND-208` has an existing attachment `old_draft_spec.pdf`.
3. User is on the Edit Tender form for `TND-208`.

# Steps
1. Navigate to the attachments section on the Edit Tender form.
2. Locate the existing attachment `old_draft_spec.pdf` and click the "Remove" / "Delete" icon.
3. Verify that the file badge is removed from the staged list.
4. Upload the new attachment `revised_structural_spec.pdf`.
5. Verify that the new file badge and size are rendered.
6. Click "Save Changes".

# Expected Result
1. The removal of the previous attachment and addition of the new attachment are validated.
2. The tender updates successfully with status preserved.
3. Upon redirection to Tender Details (`UF-04`), `old_draft_spec.pdf` is no longer listed.
4. `revised_structural_spec.pdf` is displayed in the attachments section and is available for download.

# Notes
- Validates Step 3 and Step 4 of the Main Flow in UF-05.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:16*
