---
tc_id: TC-ACPOFF-007
title: Verify Manual Tender Closing Is Disabled Once an Offer Has Been Accepted
priority: Medium
status:
  - completed
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-08-Accept-An-Offer.md
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Tender ID | `TND-507` (Status: `Awarded`) |
| Awarded Offer ID | `OFF-701` |
| Direct Close Endpoint | POST `/api/tenders/507/close` |

# Preconditions
1. Tender Owner is authenticated.
2. Tender `TND-507` has status `Awarded` following offer acceptance.
3. User navigates to the parent Tender Details screen (`SCR-TND-03`).

# Steps
1. Navigate to the Tender Details view for tender `TND-507`.
2. Inspect the action buttons available on the screen.
3. Verify the state and visibility of the "Close Tender" button.
4. Attempt a direct API POST request to close the tender.

# Expected Result
1. The "Close Tender" action is hidden or disabled on the UI.
2. Direct API invocation to close the tender is rejected (status is `Awarded`, not `Open`).
3. Adheres strictly to BR-06 ("Close action is enabled only if status == Open").

# Notes
- Validates post-success state in UF-08 and integration with BR-06 / UF-09.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:28*
