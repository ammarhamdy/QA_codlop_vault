---
tc_id: TC-CLSTND-001
title: Verify Successful Manual Tender Closure and Status Update to Closed
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
| Tender ID | `TND-601` |
| Initial Status | `Open` |
| Updated Status | `Closed` |
| Expected Success Message | `"Tender closed successfully."` |

# Preconditions
1. Tender Owner is logged in with an active authentication session.
2. Tender `TND-601` belongs to the authenticated owner.
3. Tender status is currently `Open`.
4. User is on the Tender Details screen (`SCR-TND-03`).

# Steps
1. On the Tender Details screen for `TND-601`, click the "Close Tender" button.
2. Verify that the closure confirmation dialog (`SCR-TND-05`) appears.
3. Click "Confirm Close" in the dialog.
4. Await system processing.
5. Inspect the success notification and the updated Tender Details screen.

# Expected Result
1. The system verifies ownership and confirms that the tender status is `Open`.
2. The tender status is successfully updated to `Closed` in the database.
3. The `updated_at` timestamp is refreshed to record the closure time.
4. The success message `"Tender closed successfully."` is displayed.
5. The Tender Details screen refreshes to reflect status `Closed`.
6. The "Close Tender" action button is hidden / removed from the screen.

# Notes
- Validates Main Flow (Steps 1 to 5), FR-12, and BR-06 in UF-09.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:30*
