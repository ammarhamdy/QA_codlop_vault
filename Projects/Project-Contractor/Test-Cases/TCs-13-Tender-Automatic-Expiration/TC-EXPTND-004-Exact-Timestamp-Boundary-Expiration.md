---
tc_id: TC-EXPTND-004
title: Verify Precision Boundary Handling for Exact Expiration Timestamps
priority: Medium
status:
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-13-Tender-Automatic-Expiration.md
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Tender A | Tender B |
| ----- | -------- | -------- |
| Tender ID | `TND-905-A` | `TND-905-B` |
| Expiration Timestamp | Exactly equal to execution timestamp (`T0`) | 1 second in future (`T0 + 1 second`) |
| Initial Status | `Open` | `Open` |

# Preconditions
1. Database contains Tender A with `end_date` equal to the scheduled execution time `T0`.
2. Database contains Tender B with `end_date` set to 1 second after `T0`.
3. Background worker triggers precisely at `T0`.

# Steps
1. Execute the expiration worker at timestamp `T0`.
2. Inspect the database status of Tender A (`TND-905-A`).
3. Inspect the database status of Tender B (`TND-905-B`).

# Expected Result
1. Tender A (`end_date <= CURRENT_TIMESTAMP`) is captured by the query and updated to `Expired`.
2. Tender B (`end_date > CURRENT_TIMESTAMP`) is not captured and remains `Open`.
3. The boundary comparison enforces exact timestamp precision without rounding anomalies.

# Notes
- Validates boundary-value condition (`<= CURRENT_TIMESTAMP`) under Step 2 of UF-13.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:48*
