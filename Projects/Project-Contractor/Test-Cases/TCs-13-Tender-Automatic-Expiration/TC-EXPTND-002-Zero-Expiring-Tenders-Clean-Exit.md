---
tc_id: TC-EXPTND-002
title: Verify Expiration Worker Exits Cleanly When No Tenders Meet Expiration Criteria
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
| Database State | Zero tenders with `status = 'Open'` AND `end_date <= CURRENT_TIMESTAMP` |
| Expected Metric | `0 records processed` |
| Worker Exit Code | `0 (Success / Clean)` |

# Preconditions
1. All `Open` tenders in the database have future expiration dates (`end_date > CURRENT_TIMESTAMP`).
2. System background worker is idle.

# Steps
1. Trigger the expiration worker job execution.
2. Observe worker execution duration, query behavior, and system log output.
3. Verify database status of existing open tenders.

# Expected Result
1. The batch query executes and returns an empty result set (zero rows).
2. The worker logs zero records processed (e.g., `Expiration worker: 0 tenders expired`).
3. No database update statements are executed.
4. The worker job terminates cleanly with an exit code of 0 without raising warnings or exceptions.

# Notes
- Directly validates alternative flow A1 in UF-13.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:48*
