---
tc_id: TC-ACPOFF-001
title: Verify Successful Offer Acceptance, Status Transitions, and Project Awarding
priority: High
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
| Tender ID | `TND-501` (Initial Status: `Open`) |
| Target Offer ID | `OFF-101` (Initial Status: `Pending`) |
| Professional Name | `Nasser Al-Ghamdi Contracting` |
| Proposed Price | `185,000 SAR` |
| Expected Success Message | `"Offer accepted successfully. Tender has been awarded."` |

# Preconditions
1. Tender Owner is logged in with an active session.
2. Tender `TND-501` belongs to the authenticated owner.
3. No offer has previously been accepted for this tender.
4. Offer `OFF-101` has status `Pending`.
5. User is on the Offer Details screen for `OFF-101`.

# Steps
1. On the Offer Details screen for `OFF-101`, click the "Accept Offer" button.
2. Verify that the confirmation modal (`SCR-OFF-03`) appears.
3. Click "Confirm Acceptance" in the confirmation modal.
4. Await system transaction and processing.
5. Inspect the resulting notification, offer status badge, and parent tender status badge.

# Expected Result
1. The system initiates an atomic transaction and validates ownership and non-award state.
2. The selected offer's status updates from `Pending` to `Accepted`.
3. The parent tender's status updates from `Open` to `Awarded`.
4. The success message `"Offer accepted successfully. Tender has been awarded."` is displayed.
5. The UI refreshes to show the offer marked as `Accepted` and the tender as `Awarded`.

# Notes
- Validates Main Flow (Steps 1 to 5), FR-11, and BR-10 in UF-08.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:28*
