---
tc_id: TC-EXPTND-005
title: Verify Tenders with Status Closed or Awarded Are Excluded from Expiration Scan
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-13-Tender-Automatic-Expiration.md
tags:
  - test-case
---

# Test Data
| Field | Tender 1 | Tender 2 |
| ----- | -------- | -------- |
| Tender ID | `TND-906-Closed` | `TND-906-Awarded` |
| Current Status | `Closed` | `Awarded` |
| Expiration Date (`end_date`) | Past timestamp (`CURRENT_TIMESTAMP - 2 hours`) | Past timestamp (`CURRENT_TIMESTAMP - 5 hours`) |

# Preconditions
1. Tender 1 has status `Closed` (manually closed by owner), and its `end_date` is in the past.
2. Tender 2 has status `Awarded` (offer was accepted), and its `end_date` is in the past.
3. System expiration worker executes.

# Steps
1. Execute the expiration worker batch job.
2. Inspect the database status and history for `TND-906-Closed`.
3. Inspect the database status and history for `TND-906-Awarded`.

# Expected Result
1. The batch query strictly filters by `status = 'Open'` and ignores records in other states.
2. Tender 1 maintains status `Closed` and is not overwritten with `Expired`.
3. Tender 2 maintains status `Awarded` and is not overwritten with `Expired`.
4. Original statuses and award histories remain preserved without state corruption.

# Notes
- Validates query criteria in Main Flow Step 2 of UF-13 (`status = 'Open'` AND `end_date <= CURRENT_TIMESTAMP`).

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:48*
