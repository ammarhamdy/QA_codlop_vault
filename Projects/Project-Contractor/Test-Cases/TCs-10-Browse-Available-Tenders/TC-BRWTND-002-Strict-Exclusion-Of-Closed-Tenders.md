---
tc_id: TC-BRWTND-002
title: Verify Manually Closed Tenders Are Strictly Excluded from Public Browse Catalog
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-10-Browse-Available-Tenders.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Tender ID | `TND-702` |
| Title | `Closed Steel Factory Construction` |
| Status | `Closed` |
| Expiration Date | Future date (`2026-12-31`) |

# Preconditions
1. Tender `TND-702` exists in the database with status `Closed` (manually closed by its owner).
2. The user is an unauthenticated Professional browsing available tenders.

# Steps
1. Navigate to the public Browse Available Tenders catalog (`SCR-PUB-01`).
2. Inspect the catalog listing.
3. Use the search bar to search specifically for `Closed Steel Factory Construction` or `TND-702`.
4. Inspect API response payload returned for the catalog query.

# Expected Result
1. Tender `TND-702` is completely absent from the displayed public catalog.
2. The search returns no results for `Closed Steel Factory Construction`.
3. The backend query enforces `status = 'Open'` and excludes `status = 'Closed'`.
4. Adheres strictly to BR-04 and BR-06 ("Closed tenders must not appear in the Professional tender listing").

# Notes
- Directly validates Main Flow Step 2, BR-04, BR-06, and FR-14 in UF-10.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:34*
