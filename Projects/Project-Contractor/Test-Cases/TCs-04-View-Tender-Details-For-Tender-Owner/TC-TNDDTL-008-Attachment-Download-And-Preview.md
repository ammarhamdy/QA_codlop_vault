---
tc_id: TC-TNDDTL-008
title: Verify File Download and Preview for Uploaded Tender Attachments
priority: Medium
status:
  - completed
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-04-View-Tender-Details.md
tags:
  - test-case
run_result: fail
web_run_result: fail
---

# Test Data
| Field | Value |
| ----- | ----- |
| Tender ID | `TND-108` |
| Attached Files | `architectural_blueprint.pdf` (12 MB), `soil_test_report.pdf` (3 MB) |
| Action | Click on attachment link / download icon |

# Preconditions
1. Tender Owner is authenticated.
2. Tender `TND-108` was created by the owner and contains valid uploaded attachments.
3. User is on the Tender Details view for `TND-108`.

# Steps
1. Navigate to the attachments section on the Tender Details screen.
2. Verify that both uploaded documents (`architectural_blueprint.pdf` and `soil_test_report.pdf`) are listed with file icons and sizes.
3. Click on the first attachment link (`architectural_blueprint.pdf`).
4. Click on the second attachment link (`soil_test_report.pdf`).

# Expected Result
1. The system serves the requested files for preview or browser download.
2. The downloaded files are intact, non-corrupted, and match the original uploaded assets.
3. No authentication or permission errors occur during file delivery.

# Notes
- Directly validates alternative flow A3 in UF-04.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:08*
