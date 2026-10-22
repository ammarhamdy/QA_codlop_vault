---
tc_id: TC-JOIN-021
title: Verify Uploading Property Management Proof Document and Auto-Save
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Start-Join-Application.md
tags:
  - test-case
---

# Test Data
| Field | Value | Constraints |
| ----- | ----- | ----------- |
| Document Type | Property Management & Rental Authorization Proof (`وثيقة تفويض أو صك أو عقد إدارة`) | Mandatory |
| Document File | `ownership_deed.pdf` | PDF, JPG, PNG, or HEIC $\le$ 10 MB |

# Preconditions
1. User has completed place details and uploaded 3 photos.
2. User is at the Management Proof Document upload field.

# Steps
1. Tap upload on the management proof document field.
2. Select `ownership_deed.pdf` (3.4 MB).
3. Tap **Save Place** (`حفظ المكان`).
4. Inspect the place draft entry on the main application review screen.

# Expected Result
1. The proof document is uploaded, validated, and securely attached to the place record.
2. The entire place record (details, coordinates, photos, proof document) is auto-saved into the application draft.
3. The place is listed on the application overview screen with all checklist items satisfied.

# Notes
- Requirement: UF-29 Main Flow Steps 7 to 8.

# Attachments

# Script

---
*Last Updated: 2026-10-22 10:55*
