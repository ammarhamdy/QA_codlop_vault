---
tc_id: TC-SBMOFF-008
title: Verify File Validation When Uploading Oversized or Unsupported Attachments
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-12-Submit-A-Tender-Offer.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Oversized File | `large_proposal_catalogue.pdf` (exceeds allowable size limit, e.g., > 25MB) |
| Unsupported File Format | `proposal_script.sh` / `binary.bin` |
| Expected Error Message | `"File exceeds maximum size or format not supported."` |

# Preconditions
1. Target tender is `Open`.
2. Professional is on the Offer Submission form (`SCR-OFF-04`).

# Steps
1. In the attachments upload section, attempt to upload `proposal_script.sh`.
2. Observe immediate client-side validation response if present.
3. Fill mandatory fields with valid contact and proposal information.
4. Attempt to upload the oversized document `large_proposal_catalogue.pdf`.
5. Click "Submit Offer" and observe system validation.

# Expected Result
1. The system blocks the upload of unsupported file types and oversized assets.
2. The file upload error message `"File exceeds maximum size or format not supported."` is displayed.
3. The invalid file is rejected and not attached to the offer submission payload.
4. Offer submission is prevented, and the user resumes at Step 5.

# Notes
- Directly validates alternative flow E2 in UF-12.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:45*
