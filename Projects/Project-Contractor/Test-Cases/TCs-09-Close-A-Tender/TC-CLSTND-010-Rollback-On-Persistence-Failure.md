---
tc_id: TC-CLSTND-010
title: Verify System Rollback and Error Handling on Persistence Failure During Closure
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-09-Close-A-Tender.md
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Tender ID | `TND-610` (Status: `Open`) |
| Simulated Error | Database update exception / network persistence failure |
| Expected Error Message | `"Failed to close tender. Please try again."` |

# Preconditions
1. Tender Owner is authenticated.
2. Tender `TND-610` is owned by the user and is in `Open` status.
3. Backend database transaction is configured to fail during the status update.

# Steps
1. Navigate to Tender Details for `TND-610` and click "Close Tender".
2. Click "Confirm Close" in the confirmation dialog.
3. Trigger the simulated persistence failure.
4. Await system processing and inspect error notification.
5. Inspect the tender record in the database and verify public catalog visibility.

# Expected Result
1. The system catches the persistence exception and reverts all partial changes.
2. The specific error message `"Failed to close tender. Please try again."` is displayed.
3. The tender status remains `Open`.
4. The tender remains visible in public professional listings and can still receive offers.
5. The user resumes on the Tender Details screen at Step 1, allowing retry.

# Notes
- Directly validates alternative flow E3 and post-failure requirement in UF-09.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:30*
