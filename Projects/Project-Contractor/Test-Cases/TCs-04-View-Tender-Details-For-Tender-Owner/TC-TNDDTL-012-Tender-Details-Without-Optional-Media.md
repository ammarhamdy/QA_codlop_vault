---
tc_id: TC-TNDDTL-012
title: Verify Tender Details Clean Display When No Optional Media or Attachments Exist
priority: Low
status:
  - completed
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-04-View-Tender-Details.md
tags:
  - test-case
run_result: pass
web_run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Tender ID | `TND-109` |
| Title | `Drywall and Partition Installation` |
| Cover Image | `null` / None uploaded |
| Attachments | `null` / None uploaded |
| Status | `Open` |

# Preconditions
1. Tender Owner is authenticated.
2. Tender `TND-109` was created by the owner without a cover image or document attachments.
3. User navigates to the details view of `TND-109`.

# Steps
1. Navigate to the Tender Details view for tender `TND-109`.
2. Inspect the cover image container area.
3. Inspect the document attachments section.
4. Verify all mandatory text and numerical project details (Title, Description, Budget, Location, Expiration Date).

# Expected Result
1. The tender details view renders without layout shifts or JavaScript errors.
2. The cover image section gracefully displays a default project placeholder image or is cleanly omitted.
3. The attachments section clearly displays a neutral indicator (e.g., "No attachments uploaded") without broken link icons.
4. All mandatory project information and action controls function normally.

# Notes
- Edge case and usability validation for optional media handling under UF-04 Step 2.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:08*
