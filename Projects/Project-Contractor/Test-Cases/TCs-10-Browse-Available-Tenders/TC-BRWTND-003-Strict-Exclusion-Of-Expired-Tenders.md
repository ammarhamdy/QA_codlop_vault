---
tc_id: TC-BRWTND-003
title: Verify Expired Tenders Are Strictly Excluded from Public Browse Catalog
priority: High
status:
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-10-Browse-Available-Tenders.md
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Tender ID | `TND-703` |
| Title | `Past Expired Commercial Fit-out` |
| Expiration Date (`end_date`) | `Yesterday at 18:00` (`end_date <= CURRENT_TIMESTAMP`) |
| Status | `Expired` (or `Open` past expiration timestamp) |

# Preconditions
1. Tender `TND-703` has passed its expiration date (`end_date < CURRENT_TIMESTAMP`).
2. The user is an unauthenticated Professional browsing available tenders.

# Steps
1. Navigate to the Browse Available Tenders catalog (`SCR-PUB-01`).
2. Inspect the catalog listing.
3. Search for `Past Expired Commercial Fit-out` or filter by its city/type.
4. Verify backend database query filters for `end_date > CURRENT_TIMESTAMP`.

# Expected Result
1. Expired tender `TND-703` is not displayed in the catalog.
2. Searching for the tender returns zero matching results.
3. The catalog query strictly enforces `end_date > CURRENT_TIMESTAMP` and excludes all expired tenders.
4. Adheres strictly to BR-04 and BR-07 ("Expired tenders must not appear in the Professional tender listing").

# Notes
- Directly validates Main Flow Step 2, BR-04, BR-07, and FR-14 in UF-10.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:34*
