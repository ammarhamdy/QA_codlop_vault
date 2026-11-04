---
tc_id: TC-EXPTND-001
title: Verify Batch Identification and Status Transition to Expired for Elapsed Open Tenders
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-13-Tender-Automatic-Expiration.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Expiring Tender 1 | ID: `TND-901`, Status: `Open`, `end_date`: `CURRENT_TIMESTAMP - 10 minutes` |
| Expiring Tender 2 | ID: `TND-902`, Status: `Open`, `end_date`: `CURRENT_TIMESTAMP - 1 hour` |
| Active Tender 3 | ID: `TND-903`, Status: `Open`, `end_date`: `CURRENT_TIMESTAMP + 5 days` |
| Worker Trigger | Cron execution trigger / scheduled worker run |

# Preconditions
1. Tenders `TND-901` and `TND-902` have status `Open` and their expiration dates have elapsed.
2. Tender `TND-903` has status `Open` with an expiration date in the future.
3. System cron scheduler and database connection are active.

# Steps
1. Trigger the expiration worker job (or await scheduled cron execution).
2. Monitor system worker log outputs during execution.
3. Inspect database records for `TND-901`, `TND-902`, and `TND-903` in the `tenders` table.
4. Verify the `updated_at` timestamp on modified records.
5. Inspect public catalog cache invalidation events.

# Expected Result
1. The worker batch query identifies `TND-901` and `TND-902` as eligible expiring tenders (`status = 'Open'` AND `end_date <= CURRENT_TIMESTAMP`).
2. Both `TND-901` and `TND-902` have their status updated to `Expired`.
3. The `updated_at` timestamp for each expired tender is refreshed to the current execution time.
4. Active tender `TND-903` remains unaffected with status `Open`.
5. Public listing cache is invalidated, and execution metrics are recorded in system logs.

# Notes
- Validates Main Flow (Steps 1 to 5), FR-13, BR-04, and BR-07 in UF-13.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:48*
