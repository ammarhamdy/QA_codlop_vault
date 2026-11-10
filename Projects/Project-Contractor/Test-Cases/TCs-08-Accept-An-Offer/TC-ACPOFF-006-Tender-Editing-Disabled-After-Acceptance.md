---
tc_id: TC-ACPOFF-006
title: Verify Tender Editing Is Disabled Once an Offer Has Been Accepted
priority: High
status:
  - completed
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-08-Accept-An-Offer.md
tags:
  - test-case
run_result: fail
web_run_result: fail
---

# Test Data
| Field | Value |
| ----- | ----- |
| Tender ID | `TND-506` |
| Awarded Offer ID | `OFF-601` |
| Direct Edit URL | `/tenders/edit?id=TND-506` |

# Preconditions
1. Tender Owner is authenticated.
2. Tender `TND-506` was successfully awarded by accepting offer `OFF-601`.
3. User navigates to the parent Tender Details screen (`SCR-TND-03`).

# Steps
1. Navigate to the Tender Details screen for `TND-506`.
2. Inspect the action buttons available on the screen.
3. Verify the state and visibility of the "Edit Tender" button.
4. Attempt direct navigation to the edit route (`/tenders/edit?id=TND-506`) or trigger an edit PUT request.

# Expected Result
1. The "Edit Tender" button is hidden or disabled on the Tender Details screen.
2. Direct navigation to the edit URL or API endpoint is rejected with an error indicating that editing is not allowed after offer acceptance.
3. Adheres strictly to BR-05 ("Editing is not allowed after an offer has been accepted").

# Notes
- Validates post-success state in UF-08 and integration with BR-05 / UF-05.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:28*
