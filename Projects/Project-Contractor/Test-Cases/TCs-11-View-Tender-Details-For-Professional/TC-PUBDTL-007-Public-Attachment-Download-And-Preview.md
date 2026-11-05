---
tc_id: TC-PUBDTL-007
title: Verify Public Attachment Download and Preview Without Authentication
priority: Medium
status:
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-11-View-Tender-Details-For-Professional.md
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Tender ID | `TND-707` |
| Status | `Open` |
| Attached File 1 | `architectural_blueprint.pdf` (PDF document) |
| Attached File 2 | `structural_diagram.png` (Image file) |

# Preconditions
1. Tender `TND-707` is active (`Open`) and contains uploaded attachment files.
2. User is unauthenticated (Professional) on the public Tender Details screen (`SCR-PUB-02`).

# Steps
1. Navigate to the Tender Details screen for `TND-707`.
2. Locate the Attachments section on the page.
3. Verify that attachment names, icons, and download/preview buttons are displayed.
4. Click on `architectural_blueprint.pdf` to download or preview the file.
5. Click on `structural_diagram.png` to view the image.
6. Monitor the browser network requests to inspect headers and response codes.

# Expected Result
1. The requested files are served directly with HTTP 200 OK.
2. No authentication credentials or cookies are requested to download the public project files.
3. The PDF downloads or opens in a browser preview window with full content integrity.
4. The image opens or renders cleanly without corruption.

# Notes
- Validates Alternative Flow A1, FR-03, and BR-02.

# Attachments

# Script

---
*Last Updated: 2026-11-04 14:38*
