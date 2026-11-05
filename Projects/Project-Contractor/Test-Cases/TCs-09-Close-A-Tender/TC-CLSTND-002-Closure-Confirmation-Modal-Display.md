---
tc_id: TC-CLSTND-002
title: Verify Confirmation Dialog Presentation and Warning Message Before Tender Closure
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
| Tender ID | `TND-602` |
| Expected Warning Text | `"Are you sure you want to close this tender? No new offers will be accepted, and it will be hidden from professionals."` |
| Action Buttons | `"Confirm Close"` (primary/danger), `"Cancel"` (dismissal) |

# Preconditions
1. Tender Owner is authenticated.
2. User is on the Tender Details screen for an active `Open` tender (`TND-602`).

# Steps
1. Navigate to the Tender Details view for `TND-602`.
2. Locate and click the "Close Tender" button.
3. Inspect the confirmation dialog (`SCR-TND-05`) that opens on the screen.
4. Verify the exact wording of the warning message and button labels.

# Expected Result
1. The application presents a confirmation modal before applying any database change.
2. The exact message is displayed: `"Are you sure you want to close this tender? No new offers will be accepted, and it will be hidden from professionals."`.
3. Two clear options are provided: "Confirm Close" and "Cancel".
4. Background elements are non-interactive while the modal is open.

# Notes
- Directly validates Main Flow Step 1 in UF-09 and SCR-TND-05.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:30*
