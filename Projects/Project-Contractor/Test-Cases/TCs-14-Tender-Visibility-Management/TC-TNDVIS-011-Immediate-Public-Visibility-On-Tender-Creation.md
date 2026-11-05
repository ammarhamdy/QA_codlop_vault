---
tc_id: TC-TNDVIS-011
title: Verify Newly Created Tender Is Immediately Published to Public Directory Without Approval Delay
priority: High
status:
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-14-Tender-Visibility-Management.md
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Tender Title | `Emergency Bridge Reinforcement Project` |
| Initial Status | `Open` |
| Verification Endpoints | POST `/api/tenders` (Create) -> GET `/api/public/tenders` (Public Catalog) |

# Preconditions
1. Tender Owner is authenticated.
2. Tender Creation API is online.

# Steps
1. As Tender Owner, send a POST request to `/api/tenders` to create `Emergency Bridge Reinforcement Project` with a future expiration date.
2. Verify that creation succeeds with HTTP 201 Created and status `Open`.
3. Immediately (within 1 second) send an anonymous GET request to `/api/public/tenders`.
4. Inspect the returned public array for the newly created tender.

# Expected Result
1. The new tender record is immediately queryable in the public directory without requiring admin approval, manual publishing steps, or staging delays.
2. The tender appears in the public professional listing immediately with status `Open`.
3. Adheres strictly to BR-03 ("Newly created tenders are published immediately") and alternative flow A1 in UF-14.

# Notes
- Validates alternative flow A1 in UF-14, BR-03, and FR-14.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:52*
