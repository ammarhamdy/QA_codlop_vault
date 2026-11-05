---
tc_id: TC-EXPTND-003
title: Verify Tenders with Future Expiration Dates Retain Open Status Unmodified
priority: High
status:
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-13-Tender-Automatic-Expiration.md
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Tender ID | `TND-904` |
| Initial Status | `Open` |
| Expiration Date (`end_date`) | `CURRENT_TIMESTAMP + 24 hours` |

# Preconditions
1. Tender `TND-904` is in `Open` status with its expiration date set 24 hours in the future.
2. Background expiration worker runs.

# Steps
1. Run the expiration batch worker job.
2. Inspect the database record for `TND-904` after worker completion.
3. Check public catalog listing for presence of `TND-904`.
4. Attempt to submit an offer for `TND-904`.

# Expected Result
1. Tender `TND-904` is excluded from the expiration update.
2. The tender retains status `Open` and its `updated_at` timestamp is not modified.
3. The tender remains visible in the public catalog (`UF-10`).
4. Professionals can continue submitting offers for `TND-904` normally.

# Notes
- Validates query filtering boundary (`end_date <= CURRENT_TIMESTAMP`) in UF-13 and BR-07.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:48*
