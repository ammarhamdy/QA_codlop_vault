---
tc_id: TC-EXPTND-010
title: Verify Batch Resilience and Error Isolation on Single Tender Database Failure
priority: High
status:
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-13-Tender-Automatic-Expiration.md
tags:
  - test-case
---

# Test Data
| Field | Tender 1 | Tender 2 (Failing) | Tender 3 |
| ----- | -------- | ------------------ | -------- |
| Tender ID | `TND-911-A` | `TND-911-B` | `TND-911-C` |
| Initial Status | `Open` | `Open` | `Open` |
| Expiration State | Elapsed | Elapsed | Elapsed |
| Simulated Error | None | DB row lock / write constraint error | None |

# Preconditions
1. Tenders `TND-911-A`, `TND-911-B`, and `TND-911-C` all have status `Open` and elapsed expiration dates.
2. Tender `TND-911-B` is mocked/configured to throw a database update error during worker processing.

# Steps
1. Execute the expiration worker batch job.
2. Monitor system worker log output and error counters.
3. Inspect database status for `TND-911-A`, `TND-911-B`, and `TND-911-C`.

# Expected Result
1. The worker catches the database update failure on `TND-911-B`.
2. The transaction for `TND-911-B` is rolled back; its status remains `Open` and error details are logged with `tender_id: TND-911-B`.
3. The failure counter is incremented, and an alert is raised for subsequent retry.
4. The worker does not abort the entire batch job; processing proceeds to subsequent records.
5. Tenders `TND-911-A` and `TND-911-C` are successfully updated to `Expired`.

# Notes
- Directly validates alternative flow E1 in UF-13.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:48*
