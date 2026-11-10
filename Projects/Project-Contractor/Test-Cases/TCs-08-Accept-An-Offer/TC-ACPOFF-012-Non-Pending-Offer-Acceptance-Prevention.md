---
tc_id: TC-ACPOFF-012
title: Verify System Blocks Acceptance on Offers Not in Pending Status
priority: Medium
status:
  - completed
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-08-Accept-An-Offer.md
tags:
  - test-case
run_result: pass
web_run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Target Offer ID | `OFF-777` |
| Current Offer Status | `Accepted` (already accepted) |
| Direct Request | POST `/api/offers/OFF-777/accept` |

# Preconditions
1. Tender Owner is authenticated.
2. Offer `OFF-777` is already in `Accepted` status.
3. User navigates to the Offer Details view for `OFF-777`.

# Steps
1. Navigate to the Offer Details screen for `OFF-777`.
2. Inspect the action buttons available on the screen.
3. Verify if the "Accept Offer" button is displayed or clickable.
4. Attempt a direct API POST request to `/api/offers/OFF-777/accept`.

# Expected Result
1. The "Accept Offer" button is hidden or disabled on the Offer Details screen.
2. The direct API request is rejected with a validation error indicating that the offer is not in an acceptable state.
3. No redundant status mutation or transaction execution occurs.

# Notes
- Directly validates precondition in UF-08: "target offer has status Pending".

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:28*
