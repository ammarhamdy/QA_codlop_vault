---
tc_id: TC-OFFDTL-005
title: Verify File Download and Preview for Attached Offer Documents
priority: Medium
status:
  - completed
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-07-View-Offer-Details.md
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Offer ID | `OFF-1005` |
| Attached Document | `technical_methodology.pdf` (5 MB) |
| Action | Click file badge / download icon |

# Preconditions
1. Tender Owner is authenticated.
2. Offer `OFF-1005` contains a valid attached document (`technical_methodology.pdf`).
3. User is on the Offer Details screen for `OFF-1005`.

# Steps
1. Navigate to the attachments section on the Offer Details screen.
2. Verify that `technical_methodology.pdf` is listed with its file name and size.
3. Click the file attachment link or download button.
4. Observe browser download or preview behavior.

# Expected Result
1. The server serves the requested attachment file without permission errors.
2. The downloaded document is complete and non-corrupted.
3. The Tender Owner can inspect the technical methodology and supporting proposal documentation.

# Notes
- Directly validates alternative flow A4 in UF-07.

# Attachments

# Script

---
*Last Updated: 2026-11-04 14:22*
