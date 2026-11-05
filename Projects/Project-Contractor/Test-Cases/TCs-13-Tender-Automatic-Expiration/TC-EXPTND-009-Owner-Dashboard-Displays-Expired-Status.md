---
tc_id: TC-EXPTND-009
title: Verify Owner Views and Management Controls Reflect Expired State Appropriately
priority: Medium
status:
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-13-Tender-Automatic-Expiration.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Tender ID | `TND-910` |
| Updated Status | `Expired` |
| Owner Navigation | "My Tenders" (`SCR-TND-02`) and Tender Details (`SCR-TND-03`) |

# Preconditions
1. Tender Owner is authenticated.
2. Tender `TND-910` was created by the owner and has automatically transitioned to `Expired` via the worker.

# Steps
1. Navigate to the "My Tenders" list view (`UF-03`).
2. Locate the tender card for `TND-910` and inspect its status badge.
3. Click the card to open Tender Details (`UF-04`).
4. Inspect the status badge and available action buttons on the details view.

# Expected Result
1. In "My Tenders", the tender card displays the `Expired` status badge.
2. Filtering by `Expired` in "My Tenders" includes `TND-910`.
3. In Tender Details, the status badge reflects `Expired`.
4. The "Close Tender" button is hidden/disabled (as the tender is already expired per BR-06).
5. The "View Offers" button remains available.

# Notes
- Validates post-success state in UF-13 and integration with UF-03 and UF-04.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:48*
