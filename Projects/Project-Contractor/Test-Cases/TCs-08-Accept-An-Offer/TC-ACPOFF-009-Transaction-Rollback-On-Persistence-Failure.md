---
tc_id: TC-ACPOFF-009
title: Verify Atomic Transaction Rollback and Error Handling on Persistence Failure
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-08-Accept-An-Offer.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Tender ID | `TND-509` (Initial Status: `Open`) |
| Offer ID | `OFF-901` (Initial Status: `Pending`) |
| Simulated Error | Database transaction exception / connection interruption |
| Expected Error Message | `"Failed to accept offer. Please try again."` |

# Preconditions
1. Tender Owner is authenticated.
2. User is on the Offer Details screen for `OFF-901`.
3. Database transaction is configured/mocked to fail midway through the status transition updates.

# Steps
1. Click "Accept Offer" on the Offer Details screen for `OFF-901`.
2. Click "Confirm Acceptance" in the confirmation modal.
3. Trigger the persistence/database exception during transaction commit.
4. Observe system response, error message, and UI state.
5. Inspect the database statuses of `TND-509` and `OFF-901`.

# Expected Result
1. The database transaction rolls back completely to prevent inconsistent states.
2. The offer status remains `Pending` (does not remain stuck in `Accepted`).
3. The tender status remains `Open` (does not transition to `Awarded`).
4. An actionable error message is displayed: `"Failed to accept offer. Please try again."`.
5. The user resumes on the Offer Details screen at Step 1, with the ability to retry the acceptance.

# Notes
- Directly validates alternative flow E3 and post-failure requirement in UF-08.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:28*
