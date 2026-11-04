---
tc_id: TC-ACPOFF-003
title: Verify Cancellation of Offer Acceptance Leaves Statuses Unaltered
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-08-Accept-An-Offer.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Tender ID | `TND-503` (Status: `Open`) |
| Offer ID | `OFF-103` (Status: `Pending`) |
| Action | Click "Cancel" on confirmation modal |

# Preconditions
1. Tender Owner is authenticated.
2. User has clicked "Accept Offer" on the Offer Details screen for `OFF-103`.
3. The confirmation modal (`SCR-OFF-03`) is currently visible on the screen.

# Steps
1. On the confirmation modal, click the "Cancel" button.
2. Verify that the modal closes.
3. Inspect the offer status on the Offer Details screen.
4. Navigate to the parent tender details and verify its status.

# Expected Result
1. The confirmation modal closes immediately without initiating a transaction.
2. Offer `OFF-103` retains its original status: `Pending`.
3. Tender `TND-503` retains its original status: `Open`.
4. The user resumes on the Offer Details screen at Step 1, with "Accept Offer" remaining available.

# Notes
- Directly validates alternative flow A1 in UF-08.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:28*
