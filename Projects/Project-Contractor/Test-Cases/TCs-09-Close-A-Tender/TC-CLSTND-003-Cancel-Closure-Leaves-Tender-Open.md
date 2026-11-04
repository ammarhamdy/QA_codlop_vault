---
tc_id: TC-CLSTND-003
title: Verify Cancellation of Closure Dialog Leaves Tender Status as Open
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-09-Close-A-Tender.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Tender ID | `TND-603` |
| Initial Status | `Open` |
| Action | Click "Cancel" on confirmation dialog |

# Preconditions
1. Tender Owner is authenticated.
2. User has clicked "Close Tender" on the Tender Details screen for `TND-603`.
3. The confirmation dialog is currently displayed.

# Steps
1. On the confirmation dialog, click the "Cancel" button.
2. Verify that the dialog closes.
3. Inspect the tender status displayed on the Tender Details screen.
4. Verify the visibility of the "Close Tender" button.

# Expected Result
1. The confirmation dialog closes immediately without mutating data.
2. The tender remains in `Open` status.
3. The tender remains active, public, and capable of receiving offers.
4. The user resumes on the Tender Details screen at Step 1 with "Close Tender" remaining available.

# Notes
- Directly validates alternative flow A1 in UF-09.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:30*
