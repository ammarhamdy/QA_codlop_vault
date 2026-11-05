---
tc_id: TC-PUBDTL-009
title: Verify Navigation to Offer Submission Form via Submit Offer Action
priority: High
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
| Tender ID | `TND-709` |
| Status | `Open` |
| Action Button | `"Submit Offer"` |
| Target Form Screen | `SCR-OFF-04` (Offer Submission Form / UF-12) |

# Preconditions
1. Tender `TND-709` is active with status `Open`.
2. Expiration date is in the future.
3. User is unauthenticated (Professional) on the public Tender Details screen (`SCR-PUB-02`).

# Steps
1. On the Tender Details screen for `TND-709`, review the specifications.
2. Locate the prominent "Submit Offer" action button.
3. Click the "Submit Offer" button.
4. Observe the application routing and resulting view.

# Expected Result
1. The application transitions smoothly to the Offer Submission form (`SCR-OFF-04`).
2. The user is not redirected to a login or registration screen prior to reaching the form.
3. The submission form correctly binds to tender `TND-709` (e.g., displaying tender title or pre-filled context).

# Notes
- Validates Main Flow Step 5, FR-08, and integration with UF-12.

# Attachments

# Script

---
*Last Updated: 2026-11-04 14:38*
