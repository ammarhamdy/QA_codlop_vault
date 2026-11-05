---
tc_id: TC-CLSTND-004
title: Verify Closed Tender Is Immediately Removed from Public Professional Listings
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-09-Close-A-Tender.md
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Tender ID | `TND-604` (`Steel Structure Warehouse`) |
| Closed By | Authenticated Owner |
| Public Directory View | Browse Available Tenders (`UF-10`, `SCR-TND-06`) |

# Preconditions
1. Tender `TND-604` is initially in `Open` status and visible in the public browse tenders list (`UF-10`).
2. Tender Owner confirms closure of `TND-604`.

# Steps
1. As the Tender Owner, complete the closure of tender `TND-604`.
2. Confirm the success message: `"Tender closed successfully."`.
3. Open a separate unauthenticated browser window (Professional persona).
4. Navigate to the Browse Available Tenders catalog (`UF-10`).
5. Refresh the listings and search for `TND-604` by title or keywords.

# Expected Result
1. The closed tender `TND-604` is immediately de-indexed from the public catalog.
2. `TND-604` does not appear in the browse tenders listing or search results for professionals.
3. Adheres strictly to BR-04 and BR-06 ("Closed or expired tenders must not appear in the Professional tender listing").

# Notes
- Validates Main Flow Step 4, BR-04, BR-06, and FR-14 in UF-09.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:30*
