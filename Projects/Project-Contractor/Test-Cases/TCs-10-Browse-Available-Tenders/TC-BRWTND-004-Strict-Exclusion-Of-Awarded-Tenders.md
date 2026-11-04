---
tc_id: TC-BRWTND-004
title: Verify Awarded Tenders Are Strictly Excluded from Public Browse Catalog
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
| Tender ID | `TND-704` |
| Title | `Awarded Residential Compound Project` |
| Status | `Awarded` (An offer was accepted) |
| Expiration Date | Future date |

# Preconditions
1. Tender `TND-704` exists in the database with status `Awarded`.
2. The user is an unauthenticated Professional browsing available tenders.

# Steps
1. Navigate to the Browse Available Tenders catalog (`SCR-PUB-01`).
2. Review the public tender listings.
3. Search specifically for `Awarded Residential Compound Project` or `TND-704`.
4. Inspect the API response for public tenders.

# Expected Result
1. Tender `TND-704` does not appear anywhere in the public browse catalog.
2. The search results do not include `TND-704`.
3. The catalog query strictly excludes tenders with status `Awarded`.
4. Professionals are only presented with tenders that are open and available for bidding.

# Notes
- Validates Main Flow Step 2, BR-04, and FR-14 in UF-10.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:34*
