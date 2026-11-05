---
tc_id: TC-EXPTND-006
title: Verify Expired Tenders Are Immediately Delisted from Public Professional Listings
priority: High
status:
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-13-Tender-Automatic-Expiration.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Tender ID | `TND-907` (`Hospital Wing Construction`) |
| Initial State | Rendered in public browse tenders listing |
| Trigger Event | Expiration worker updates status to `Expired` |
| Verification Target | Browse Available Tenders (`SCR-PUB-01`, UF-10) |

# Preconditions
1. Tender `TND-907` is initially visible in the public browse catalog (`UF-10`).
2. Its `end_date` elapses, and the expiration worker executes.

# Steps
1. Verify that `TND-907` transitions to `Expired` via the background worker.
2. In an unauthenticated browser context, refresh the Browse Available Tenders page (`SCR-PUB-01`).
3. Search for `Hospital Wing Construction` or `TND-907` in the catalog.
4. Inspect API query payload for `/api/public/tenders`.

# Expected Result
1. The catalog and search cache are invalidated upon worker execution.
2. `TND-907` is immediately de-indexed and removed from the public catalog.
3. The search returns zero matching results for the expired tender.
4. Adheres strictly to BR-04 and BR-07 ("Expired tenders must not appear in the Professional tender listing").

# Notes
- Directly validates Main Flow Step 4, BR-04, BR-07, and FR-14 in UF-13.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:48*
